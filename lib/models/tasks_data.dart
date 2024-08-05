import 'dart:collection';

import 'package:chatapp/models/tasks.dart';
import 'package:flutter/material.dart';

class TasksData extends ChangeNotifier{
  List<Tasks> _task = [
    Tasks(name: 'Buy milk'),
    Tasks(name: 'Buy bread'),
    Tasks(name: 'Buy sugar'),
  ];
//create  a getter method that returns the length of the list.
  int get taskCount => _task.length;

  UnmodifiableListView<Tasks> get task => UnmodifiableListView(_task);

//A method to add new task to the list
  void addTasks(String newTaskTitle){
    final newTask = Tasks(name: newTaskTitle);
    _task.add(newTask);
    notifyListeners();
  }

  void checkTasks(Tasks task){
    task.toggleIsDone();
    notifyListeners();
  }

  void deleteTasks(Tasks task){
    _task.remove(task);
    notifyListeners();
  }
}