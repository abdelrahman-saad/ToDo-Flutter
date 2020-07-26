import 'package:flutter/material.dart';
import 'Task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/Task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem = taskData.tasks[index];
            return Task_tile(
              taskTitle: taskItem.name,
              isChecked: taskItem.isDone,
              CBCB: (CB) {
                taskData.UpdateTask(taskItem);
              },
              LPCB: () {
                taskData.DeleteTask(taskItem);
              },
            );
          },
          itemCount: taskData.Count,
        );
      },
    );
  }
}
