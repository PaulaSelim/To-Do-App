import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  //list of tasks

  List toDoList = [];

  //reference to the hive box

  final _myBox = Hive.box('toDoListBox');

  //initialize the database for the first time ever
  void createInitialData() {
    toDoList = [
      ["Try checking of a task", false],
      ["Try adding a new task", false],
      ["Try deleting a task", true],
    ];
  }

  //load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
