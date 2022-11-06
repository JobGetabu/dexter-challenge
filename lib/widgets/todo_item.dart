import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  final Map<String, dynamic> todo;
  final Function onToDoChanged;
  final Function onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged.call();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          (todo['taskDone'] as bool) ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          '${todo['taskName']}',
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: (todo['taskDone'] as bool)? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(
          ' Patient🤒: ${todo['taskResident']}\n Nurse🥼: ${todo['taskOwner']}',
          style: TextStyle(
            fontSize: 14,
            color: tdGrey,
            decoration: (todo['taskDone'] as bool)? TextDecoration.lineThrough : null,
          ),
        ),
        isThreeLine: true,
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem.call();
            },
          ),
        ),
      ),
    );
  }
}