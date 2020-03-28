import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen();
  @override
  Widget build(BuildContext context) {
  String newTaskTitle;
    return Container(
      color: Color(0xff7f7f7f),
      child: Container(
        padding: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            Container(
              width: 200,
              child: TextField(
                onChanged: (input){
                  newTaskTitle = input;
                },
                autofocus: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: FlatButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addNewTask(newTaskTitle);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w300,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
