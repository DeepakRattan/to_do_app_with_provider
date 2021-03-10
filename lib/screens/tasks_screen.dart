import 'package:flutter/material.dart';
import 'package:to_do_app_with_provider/models/tasks.dart';
import 'package:to_do_app_with_provider/widgets/tasks_list.dart';

import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Fruit'),
    Task(name: 'Buy Banana'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Fruit'),
    Task(name: 'Buy Banana'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        color: Colors.blueAccent,
                        size: 40.0,
                      ),
                      backgroundColor: Colors.white,
                      radius: 30.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'To Do App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${tasks.length} tasks',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      )),
                  child: TasksList(
                    tasks: tasks,
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            child: Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => SingleChildScrollView(
                          child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTaskScreen(
                          (newTaskTitle) {
                            print('task screen $newTaskTitle');
                            setState(() {
                              tasks
                                  .add(Task(name: newTaskTitle, isDone: false));
                            });
                            // remove the bottom sheet after new task is added
                            Navigator.pop(context);
                          },
                        ),
                      )));
            }));
  }

  Widget buildBottomSheet(BuildContext context) {
    return Container(
      child: Center(
        child: Text('dvsjvsajvjsa'),
      ),
    );
  }
}
