import 'package:flutter/material.dart';
import 'task_tile.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final List<Task> taskList = Provider.of<DataNF>(context).tasks;
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: taskList[index].name,
          isChecked: taskList[index].isDone,
          index: index,
        );
      },
      itemCount: taskList.length,
    );
  }
}
