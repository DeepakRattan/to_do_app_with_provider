import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkBoxCallBack(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a text',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        toggleCheckBoxState: checkBoxCallBack,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckBoxState;
  const TaskCheckBox({this.checkboxState, this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
