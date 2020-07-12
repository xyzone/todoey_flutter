import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Input something',
                border: UnderlineInputBorder(),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(8.0),
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
              onPressed: () {},
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 20,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
