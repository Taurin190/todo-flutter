import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:firebase_database/firebase_database.dart';

class TodoApi {
  static const bool Debug = false;
  final _reference = FirebaseDatabase.instance.reference();

  Future<List<Todo>> fetchTodoList() async {
    if (Debug) {
      return Todo.fromJsonList(
        json.decode(await rootBundle.loadString("assets/data.json"))
      );
    }
    _reference.once().then((DataSnapshot d){
      print('Firebase Event Snapshot: ${d.value}');
      return [];
    });
    return [];
  }

  Future<bool> createTodo(Todo todo) async {
    return true;
  }

  Future<bool> closeTodo(int id) async {
    return true;
  } 
}