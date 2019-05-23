import 'package:flutter/material.dart';
import 'package:todo_flutter/ui/todo_list.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';


class TodoHome extends StatefulWidget {

  @override
  ToDoHomeState createState() {
    return new ToDoHomeState();
  }
}


class ToDoHomeState extends State<TodoHome> {
  TodoHub todoHub;
  List<Todo> todoList;

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
      body: new TodoListView(todoList),
      floatingActionButton: FloatingActionButton(
        onPressed: () => appBloc.openTodoCreationPage(context),
        tooltip: "Create new TODO",
        child: Icon(Icons.add),
      ),
    );
  }
}