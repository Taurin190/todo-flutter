import 'package:flutter/material.dart';
import 'package:todo_flutter/domain/todo_hub.dart';

class TodoBody extends StatelessWidget {
  TodoHub todoHub;  

  TodoBody(todoHub) {
    this.todoHub = todoHub;
  }

  @override 
  Widget build(BuildContext context) {
    return todoHub == null
    ? Center(child: CircularProgressIndicator(),
    )
    : new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[],
    );
  }
}