import 'package:flutter/material.dart';
import 'package:todo_flutter/ui/todo_list.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class TodoHome extends StatefulWidget {
  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;
  TodoHome({Key key, this.analytics, this.observer})
      : super(key: key);

  @override
  ToDoHomeState createState() {
    return new ToDoHomeState(analytics, observer);
  }
}


class ToDoHomeState extends State<TodoHome> {
  TodoHub todoHub;
  List<Todo> todoList;
  final FirebaseAnalyticsObserver observer;
  final FirebaseAnalytics analytics;

  ToDoHomeState(this.analytics, this.observer);
  
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