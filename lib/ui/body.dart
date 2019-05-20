import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';

class TodoBody extends StatelessWidget {
  final TodoHub todoHub;  

  TodoBody(this.todoHub);

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