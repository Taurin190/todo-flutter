import 'package:rxdart/rxdart.dart';
import 'package:todo_flutter/api/todo_api.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/entity/user.dart';
import 'package:todo_flutter/bloc/auth_bloc.dart';

class TodoBloc {
  final _api = TodoApi();
  final _todoList = BehaviorSubject<List<Todo>>(seedValue: null);
  ValueObservable<List<Todo>> get todoList => _todoList.stream;

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

   createTodo(String title, String description, void afterCreated(data)) async {
    Todo todo = Todo.fromForm(title, description);
    User user = authBloc.getUser();
    _api.createTodo(todo, user).then(afterCreated);
    fetchTodos();
  }

  closeTodo(String key, void afterClosed(data)) async {
    _api.closeTodo(key).then(afterClosed);
    fetchTodos();
  }

  dispose() {
    _todoList.close();
  }
}

final todoBloc = TodoBloc();