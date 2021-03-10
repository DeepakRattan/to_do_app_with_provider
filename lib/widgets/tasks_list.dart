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
          return TaskTile(
            // widget refers to stateful widget
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkBoxCallBack: (checkBoxState) {
              /*setState(() {
                widget.tasks[index].toggleDone();
              });*/
            },
          );
        },
        itemCount: taskData.tasks.length,
      );
    });
  }
}
