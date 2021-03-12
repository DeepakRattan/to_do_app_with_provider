import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app_with_provider/models/task_data.dart';
import 'package:to_do_app_with_provider/models/tasks.dart';
import 'package:to_do_app_with_provider/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      // Dynamic list view builder
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            // widget refers to stateful widget
            isChecked: task.isDone,
            taskTitle: task.name,
            checkBoxCallBack: (checkBoxState) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              // Only checked tasks will be deleted
              if (task.isDone) taskData.deleteTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
