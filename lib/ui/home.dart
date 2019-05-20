import 'package:flutter/material.dart';
import 'package:todo_flutter/ui/body.dart';
import 'package:todo_flutter/entity/todo_hub.dart';

class TodoHome extends StatefulWidget {

  @override
  ToDoHomeState createState() {
    return new ToDoHomeState();
  }
}


class ToDoHomeState extends State<TodoHome> {
  TodoHub todoHub;

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: Text("TODO List"),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.share),
      )
    ],
  );

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: new TodoBody(todoHub),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Create new TODO",
        child: Icon(Icons.add),
      ),
    );
  }
}