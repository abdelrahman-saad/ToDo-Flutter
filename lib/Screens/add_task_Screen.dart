import 'package:flutter/material.dart';
import 'package:todo_list/models/Task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String Tasktext;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.lightBlueAccent,
              onChanged: (val) {
                Tasktext = val;
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(Tasktext);
                Navigator.pop(context);
              },
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
      ),
    );
  }
}
