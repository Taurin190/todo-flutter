import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;
  TodoCard(this.todo);

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(
      children: <Widget>[
        Text(todo.title),
        Text(todo.description),
      ],
    ),
    );
  }
}