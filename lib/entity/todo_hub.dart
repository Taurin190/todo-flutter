import 'package:todo_flutter/util/date.dart';

class TodoHub {
  List<Todo> todoList;
}

class Todo {
  String get key => _key;
  String get title => _title;
  String get description => _description;
  String createdAt;
  String _key;
  String _title;
  String _description;

  static fromJsonList(Map<String, dynamic> parsedJson) {
    dynamic todoJsonList = parsedJson['results'];
    return List<Todo>.from(todoJsonList.map((json) => Todo(json)).toList());
  }

  Todo(dynamic result) {
    // id = result['id'];
    title = result['title'];
    description = result['description'];
    createdAt = result['createdAt'];
  }

  set key(String inputKey) {
    _key = inputKey;
  }
  set title(String inputTitle) {
    _title = inputTitle;
  }

  set description(String inputDescription) {
    _description = inputDescription;
  }

  static Todo fromForm(String inputTitle, String inputDescription) {
    Todo todo = Todo({
      'title': inputTitle, 
      'description':inputDescription,
      'createdAt': DateUtil.getCurrentDatetime(),
    });
    return todo;
  }
}