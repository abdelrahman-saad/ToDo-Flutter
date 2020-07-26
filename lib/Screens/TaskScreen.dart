import 'package:flutter/material.dart';
import 'package:todo_list/widgets/Task_list.dart';
import 'add_task_Screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/Task_data.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'TODO',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).Count} Tasks',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TaskList(),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
          ))
        ],
      ),
    );
  }
}
