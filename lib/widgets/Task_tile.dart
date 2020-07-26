import 'package:flutter/material.dart';

class Task_tile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function CBCB;
  final Function LPCB;
  Task_tile({this.isChecked, this.taskTitle, this.CBCB, this.LPCB});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: LPCB,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: CBCB,
      ),
    );
  }
}
