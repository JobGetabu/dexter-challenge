import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fimber/fimber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_cubit.freezed.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  final FirebaseFirestore firebaseFirestore;
  final Map<String, dynamic> user;

  TaskCubit(this.firebaseFirestore, this.user) : super(TaskState.initial());

  void addUpdateTask(
      String taskName, String taskOwner, String taskResident) async {
    try {
      emit(TaskState.loading());

      var taskId = firebaseFirestore.collection('tasks').doc().id;
      var taskDoc = {
        'taskId': taskId,
        'taskName': taskName,
        'taskOwner': taskOwner,
        'taskResident': taskResident,
        'taskDone': false,
        'taskDeleted': false,
        'shift': user['currentShift'],
        'createdAt': FieldValue.serverTimestamp(),
      };

      await firebaseFirestore.collection('tasks').doc(taskId).set(taskDoc);

      emit(TaskState.success(taskDoc));
    } catch (e) {
      Fimber.e('$e');
      emit(TaskState.error('$e'));
    }
  }
  void getTasks(){
    getMyTasks();
    getOtherTasks();
  }

  void getMyTasks() {
    try {
      emit(TaskState.loading());

      FirebaseFirestore.instance
          .collection('tasks')
          //.where('taskOwner', isEqualTo: user['name'])
          .where('taskDeleted', isEqualTo: false)
          .orderBy('createdAt', descending: true)
          .snapshots()
          .listen((event) {
        List<Map<String, dynamic>> tasks = [];

        event.docs.forEach((taskDoc) {
          tasks.add(taskDoc.data());
        });
        emit(TaskState.getTasks(tasks));
      });
    } catch (e) {
      Fimber.e('$e');
      emit(TaskState.error('$e'));
    }
  }

  void getOtherTasks() {
    try {
      //emit(TaskState.loading());

      FirebaseFirestore.instance
          .collection('tasks')
          .where('taskOwner', isNotEqualTo: user['name'])
          .where('taskDeleted', isEqualTo: false)
          //.orderBy('createdAt', descending: true)
          .snapshots()
          .listen((event) {
        List<Map<String, dynamic>> tasks = [];

        event.docs.forEach((taskDoc) {
          tasks.add(taskDoc.data());
        });
        emit(TaskState.getTasksOther(tasks));
      });
    } catch (e) {
      Fimber.e('$e');
      emit(TaskState.error('$e'));
    }
  }

  void deleteTask(String taskId) async {
    try {
      await FirebaseFirestore.instance.collection('tasks').doc(taskId).update({
        'taskDeleted': true,
      });
    } catch (e) {}
  }

  void updateTask(String taskId) async {
    try {
      await FirebaseFirestore.instance.collection('tasks').doc(taskId).update({
        'taskDone': true,
      });
    } catch (e) {}
  }
}
