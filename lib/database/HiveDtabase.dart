import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  final myBoxx = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }
  void loadData() {
    toDoList = myBoxx.get("TODOLIST");
  }

  void updateDataBase() {
    myBoxx.put("TODOLIST", toDoList);
  }
}