import 'package:flutter/material.dart';
import 'package:to_do_app_with_provider/models/tasks.dart';
import 'package:to_do_app_with_provider/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    // Dynamic list view builder
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          // widget refers to stateful widget
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkBoxCallBack: (checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
