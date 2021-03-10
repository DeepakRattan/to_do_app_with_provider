import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app_with_provider/models/task_data.dart';
import 'package:to_do_app_with_provider/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Step 3: Provider
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
