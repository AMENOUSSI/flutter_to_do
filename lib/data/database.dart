import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  //LIST TO DO LIST
  List toDoList = [];
  final _myBox = Hive.box('myBox');

  //run this method if it is the first time ever opening this app

  void createInitialData() {
    toDoList = [
      ["Make Tutorials", false],
      ["DO Exercises", false]
    ];
  }

  //load the data from the database

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
