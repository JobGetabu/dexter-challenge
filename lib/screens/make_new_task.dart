import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dexter_todo/animations/fade_animation.dart';
import 'package:dexter_todo/bloc/task_cubit/task_cubit.dart';
import 'package:dexter_todo/constants/colors.dart';
import 'package:dexter_todo/screens/note_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class Note_Task extends StatefulWidget {
  final Map<String, dynamic> user;

  const Note_Task({Key? key, required this.user}) : super(key: key);

  @override
  _Note_TaskState createState() => _Note_TaskState();
}

class _Note_TaskState extends State<Note_Task> {
  String? taskName;
  String? taskOwner;
  String? taskResident;

  @override
  void initState() {
    super.initState();
    taskOwner = widget.user['name'];
  }

  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffF4F6FD),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: he * 0.05, left: we * 0.73),
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
                child: Container(
                    width: 47,
                    height: 47,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffF4F6FD),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 20,
                        ))),
              ),
              NoteFormWidget(
                  description: '',
                  hint: 'Enter new task',
                  onChangedDescription: (taskName) {
                    setState(() => this.taskName = taskName);
                  }),
              NoteFormWidget(
                  description: '',
                  hint: 'Enter task owner (optional)',
                  onChangedDescription: (taskOwner) {
                    setState(() => this.taskOwner = taskOwner);
                  }),
              NoteFormWidget(
                  description: '',
                  hint: 'Resident name',
                  onChangedDescription: (taskResident) {
                    setState(() => this.taskResident = taskResident);
                  }),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      floatingActionButton:
          FadeAnimation(delay: 0.4, child: _buildSubmitButton()),
    );
  }

  Widget _buildSubmitButton() {
    return BlocProvider(
      create: (context) => TaskCubit(FirebaseFirestore.instance, widget.user),
      child: BlocConsumer<TaskCubit, TaskState>(
        listener: (context, state) {
          state.maybeWhen(
              success: (user) async {
                Navigator.of(context).pop();
              },
              error: (error) {
                Fluttertoast.showToast(
                    msg: error,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 5,
                    textColor: Colors.red,
                    fontSize: 14.0);
              },
              orElse: () => false);
        },
        builder: (context, state) {
          var we = MediaQuery.of(context).size.width;
          var isLoading =
              state.maybeWhen(loading: () => true, orElse: () => false);

          return BounceInUp(
            child: Container(
              width: we * 0.4,
              height: 50,
              margin: EdgeInsets.only(left: we * 0.45),
              child: ElevatedButton(
                child: isLoading == false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "New task",
                            style: GoogleFonts.lato(color: Colors.white),
                          ),
                          SizedBox(
                            width: we * 0.03,
                          ),
                          const Icon(
                            Icons.expand_less_outlined,
                            color: Colors.white,
                          )
                        ],
                      )
                    : SizedBox(
                        height: 30,
                        width: 30,
                        child: SpinKitFadingCircle(
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                onPressed: () async {
                  if (taskName == null) {
                    Fluttertoast.showToast(
                        msg: 'Please add your task',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        textColor: Colors.white,
                        fontSize: 14.0);
                    return;
                  }

                  if (taskResident == null) {
                    Fluttertoast.showToast(
                        msg: 'Please add resident',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        textColor: Colors.blue,
                        fontSize: 14.0);
                    return;
                  }

                  context.read<TaskCubit>().addUpdateTask(
                      '$taskName', '$taskOwner', '$taskResident');

                },
                style: ElevatedButton.styleFrom(
                    primary: tdBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
          );
        },
      ),
    );
  }

}
