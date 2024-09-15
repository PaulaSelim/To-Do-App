import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool isDone;
  Function(bool?)? onChanged;
  Function()? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.isDone,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: 10.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            // checkbox
            Checkbox(
              value: isDone,
              onChanged: onChanged,
            ),

            // task name
            Expanded(
              child: Text(
                taskName,
                style: TextStyle(
                  decoration:
                      isDone ? TextDecoration.lineThrough : TextDecoration.none,
                ),
                softWrap: true,
                maxLines: null,
                overflow: TextOverflow.visible,
              ),
            ),

            // delete button
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: deleteFunction,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
