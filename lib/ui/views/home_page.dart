import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do/data/database.dart';
import 'package:to_do/utils/todo_tile.dart';
import 'package:to_do/utils/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller for the dialog box
  final _controller = TextEditingController();

  ToDoDataBase db = ToDoDataBase();

  //reference to the hive box
  final _myBox = Hive.box('toDoListBox');

  @override
  void initState() {
    // if this is the first time the app is running, create the initial data

    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      // there already exists data in the database
      db.loadData();
    }

    super.initState();
  }

  //checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(
      () {
        db.toDoList[index][1] = !db.toDoList[index][1];
      },
    );
    db.updateDataBase();
  }

  //save the new task
  void saveNewTask() {
    setState(
      () {
        db.toDoList.add([_controller.text, false]);
        _controller.clear();
        Navigator.of(context).pop();
      },
    );
    db.updateDataBase();
  }

  //add a new task
  void addTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  //delete a task
  void deleteTask(int index) {
    setState(
      () {
        db.toDoList.removeAt(index);
      },
    );
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar

      appBar: AppBar(
        title: const Text('To-Do List'),
      ),

      //floating action button

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: FloatingActionButton(
          onPressed: addTask,
          child: const Icon(Icons.add),
        ),
      ),

      //list of tasks

      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            isDone: db.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: () => deleteTask(index),
          );
        },
      ),
    );
  }
}
