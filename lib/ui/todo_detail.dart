import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';

class TodoDetailView extends StatelessWidget {
  final Todo todo;
  TodoDetailView(this.todo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo1")),
      body: Text("aaa"),
    );
  } 
}