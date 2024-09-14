import 'package:flutter/material.dart';
import 'package:to_do/utils/todo_tile.dart';
import 'package:to_do/utils/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of tasks
  List toDoList = [
    ['Task 1', true],
    ['Task 2', false],
    ['Task 3', false],
  ];

  //checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(
      () {
        toDoList[index][1] = !toDoList[index][1];
      },
    );
  }

  //add a new task
  void addTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar

      appBar: AppBar(
        title: const Text('To-Do List'),
      ),

      //floating action button

      floatingActionButton: FloatingActionButton(
        onPressed: addTask,
        child: const Icon(Icons.add),
      ),

      //list of tasks

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            isDone: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
