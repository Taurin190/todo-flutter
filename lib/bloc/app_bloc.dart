import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:todo_flutter/api/todo_api.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/ui/todo_detail.dart';
import 'package:todo_flutter/ui/todo_creation.dart';

class AppBloc {
  final _api = TodoApi();
  final _todoList = BehaviorSubject<List<Todo>>(seedValue: null);
  ValueObservable<List<Todo>> get todoList => _todoList.stream;


  void openTodoDetailPage(context, Todo todo) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TodoDetailView(todo),
      )
    );
  }

  void openTodoCreationPage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TodoCreation(),
      )
    );
  }

  void returnPage(context) {
    Navigator.pop(context);
  }

  fetchTodos() async {
    List<Todo> todoList = await _api.fetchTodoList();
    print(todoList);
    if (_todoList.value == null) {
      _todoList.value = [];
    }
    if (_todoList.value.length > 0) {
      _todoList.value = [];
    }
    _todoList.sink.add(_todoList.value + todoList);
  }

   createTodo(String title, String description) async {
    Todo todo = Todo.fromForm(title, description);
    _api.createTodo(todo);
  }

  closeTodo(String key) async {
    _api.closeTodo(key);
  }

  dispose() {
    _todoList.close();
  }
}

final appBloc = AppBloc();