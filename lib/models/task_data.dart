import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_do_app_with_provider/models/tasks.dart';

// Step 2 : Provider
class TaskData extends ChangeNotifier {
  // Making tasks private using _tasks
  // Safety of data is done by using a private list
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Fruit'),
    Task(name: 'Buy Banana'),
  ];

  // Getter for _tasks
  // Return a list of tasks that can not be changed
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  // Add new task
  void addNewTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    // notify to all places which are listening to the TaskData about the change
    notifyListeners();
  }
}
