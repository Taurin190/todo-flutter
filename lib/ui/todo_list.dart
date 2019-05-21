import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/ui/todo_card.dart';

class TodoListView extends StatelessWidget {
  final TodoHub todoHub;
  TodoListView(this.todoHub);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo1")),
      body: Text("aaa"),
    );
  } 
}