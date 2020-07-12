import 'package:flutter/material.dart';
import '../models/task.dart';

class DataNF extends ChangeNotifier{
  String data1 = 'Hello World1';
  List<Task> tasks = [];
  int totalTask = 0;

  void toggleTask({int index}){
    tasks[index].toggleDone();
    notifyListeners();
  }

  void addTask({String taskName}){
    tasks.add(Task(name: taskName),);
    totalTask = tasks.length;
    notifyListeners();
  }

  void changeString(ns){
    data1 = ns;
    notifyListeners();
  }
}