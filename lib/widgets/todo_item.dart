import 'package:flutter/material.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final Function(ToDo) onToDoChanged;
  final Function(String) onDeleteItem;
  final Function(String) onEditItem;

  const ToDoItem({
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
    required this.onEditItem,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          todo.text!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                onEditItem(todo.id);
              },
              icon: const Icon(Icons.edit),
            ),
            IconButton(onPressed: (){
              onDeleteItem(todo.id);
            }, icon: const Icon(Icons.delete),),
          ],
        ),
      ),
    );
  }
}
