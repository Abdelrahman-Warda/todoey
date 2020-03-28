import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool checkBoxState;
  final String title;
  final Function checkboxCallBack;
  final Function longPressCallBack;

  TaskTile({
    this.checkBoxState = false,
    this.title = 'this is a task',
    this.checkboxCallBack,
    this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        title,
        style: TextStyle(
          decoration: checkBoxState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: checkboxCallBack,
        value: checkBoxState,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
