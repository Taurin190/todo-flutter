import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';

class TodoDetailView extends StatelessWidget {
  final Todo todo;
  TodoDetailView(this.todo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        leading: new Icon(Icons.arrow_back),
        title: Text(todo.title)),
      body: Text(todo.description),
    );
  } 
}