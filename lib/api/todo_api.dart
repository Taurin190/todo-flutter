import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:todo_flutter/entity/todo_hub.dart';

class TodoApi {
  final _client = Client();
  static const bool Debug = true;

  Future<List<Todo>> fetchTodoList() async {
    if (Debug) {
      return Todo.fromJsonList(
        json.decode(await rootBundle.loadString("assets/data.json"))
      );
    }
  }
}