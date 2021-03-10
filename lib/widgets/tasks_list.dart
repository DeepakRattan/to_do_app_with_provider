import 'package:flutter/material.dart';
import 'package:to_do_app_with_provider/models/tasks.dart';
import 'package:to_do_app_with_provider/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Fruit'),
    Task(name: 'Buy Banana'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone, taskTitle: tasks[index].name);
      },
      itemCount: tasks.length,
    );
  }
}
