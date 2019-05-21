import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:todo_flutter/api/todo_api.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/ui/todo_detail.dart';

class AppBloc {
  final _api = TodoApi();
  final _todoList = BehaviorSubject<List<Todo>>(seedValue: []);
  ValueObservable<List<Todo>> get todoList => _todoList.stream;


  void openTodoDetailPage(context, Todo todo) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TodoDetailView(todo),
      )
    );
  }

  void backTodoListPage(context) {
    Navigator.pop(context);
  }

  fetchTodos() async {
    List<Todo> todoList = await _api.fetchTodoList();
    _todoList.sink.add(_todoList.value + todoList);
  }

  dispose() {
    _todoList.close();
  }
}

final appBloc = AppBloc();