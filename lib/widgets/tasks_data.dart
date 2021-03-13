import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TasksData with ChangeNotifier {
  List<Task> _tasksList = [];
  void add(Task task) {
    this._tasksList.add(task);
    notifyListeners();
  }

  get tasks {
    return UnmodifiableListView(this._tasksList);
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTaskAt(int index) {
    this._tasksList.removeAt(index);
    notifyListeners();
  }
}
