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
    DataSnapshot d = await _reference.once();
    if (d.value == null) {
      return [];
    }
    return [];
  }

  void createTodo(Todo todo) async {
    print("Create TODO");
    var newPostRef = _reference.child("todo").push();
    newPostRef.set({
      'title': todo.title,
      'description': todo.description,
    });
    // return true;
  }

  Future<bool> closeTodo(int id) async {
    return true;
  } 
}