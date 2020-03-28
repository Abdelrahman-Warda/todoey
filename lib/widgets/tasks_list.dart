import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, TaskData taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                checkBoxState: task.checkBoxState,
                title: task.title,
                checkboxCallBack: (value) {
                  taskData.updateTask(task);
                },
                longPressCallBack: () {
                  taskData.deleteTask(task);}
      );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
