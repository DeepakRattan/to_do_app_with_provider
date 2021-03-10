import 'package:flutter/foundation.dart';
import 'package:to_do_app_with_provider/models/tasks.dart';

// Step 2 : Provider
class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Fruit'),
    Task(name: 'Buy Banana'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
