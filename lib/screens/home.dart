import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dexter_todo/bloc/task_cubit/task_cubit.dart';
import 'package:dexter_todo/screens/make_new_task.dart';
import 'package:dexter_todo/widgets/todo_item.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';

import '../constants/colors.dart';

class Home extends StatefulWidget {
  final Map<String, dynamic> user;

  Home({Key? key, required this.user}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myTasks = [];
  var otherTasks = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TaskCubit(FirebaseFirestore.instance, widget.user)..getMyTasks(),
      child: BlocConsumer<TaskCubit, TaskState>(
        listener: (context, state) {
          Fimber.e(widget.user['name']);
          state.maybeWhen(
              getTasks: (tasks) async {
                myTasks = tasks
                    .where((e) => e['taskOwner'] == widget.user['name'])
                    .toList();
                otherTasks = tasks
                    .where((e) => e['taskOwner'] != widget.user['name'])
                    .toList();
                setState(() {});
              },
              getTasksOther: (tasks) async {},
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
          return Scaffold(
            backgroundColor: tdBGColor,
            body: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hey👋🏾 ${widget.user['name']}',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    '🩺 ${widget.user['currentShift']} shift',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: tdBlue,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: searchBox(),
                          ),
                          SliverToBoxAdapter(
                            child: FadeIn(
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: 50,
                                  bottom: 20,
                                ),
                                child: Text(
                                  'Your Tasks',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          state.maybeWhen(
                            getTasks: (tasks) {
                              return SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    return ToDoItem(
                                      todo: myTasks[index],
                                      onToDoChanged: () => _handleToDoChange(
                                          context, myTasks[index]['taskId']),
                                      onDeleteItem: () => _deleteToDoItem(
                                          context, myTasks[index]['taskId']),
                                    );
                                  },
                                  childCount: myTasks.length,
                                ),
                              );
                            },
                            orElse: () => SliverToBoxAdapter(
                              child: SizedBox(),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 50,
                                bottom: 20,
                              ),
                              child: Text(
                                'More Tasks',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return ToDoItem(
                                  todo: otherTasks[index],
                                  onToDoChanged: _handleToDoChangeOther,
                                  onDeleteItem: _handleToDoChangeOther,
                                );
                              },
                              childCount: otherTasks.length,
                            ),
                          ),
                          SliverToBoxAdapter(child: SizedBox(height: 80)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: BounceInUp(
              child: Container(
                margin: EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                ),
                child: ElevatedButton(
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  onPressed: () async {
                    await Navigator.of(context)
                        .push(PageTransition(
                            type: PageTransitionType.fade,
                            child: Note_Task(
                              user: widget.user,
                            )))
                        .then((value) => context.read<TaskCubit>()..getTasks());
                    //_addToDoItem(_todoController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: tdBlue,
                    minimumSize: Size(60, 60),
                    elevation: 10,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleToDoChange(BuildContext ctx, String taskId) {
    ctx.read<TaskCubit>().updateTask(taskId);
  }

  void _handleToDoChangeOther() {
    Fluttertoast.showToast(
        msg: 'This is not your task to complete',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        textColor: Colors.red,
        fontSize: 14.0);
  }

  void _deleteToDoItem(BuildContext ctx, String taskId) {
    context.read<TaskCubit>().deleteTask(taskId);
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        //onChanged: (value) => _runFilter(value), //TODO: create search filter
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGrey),
        ),
      ),
    );
  }
}
