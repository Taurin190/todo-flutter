import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/ui/todo_detail.dart';
import 'package:todo_flutter/ui/todo_creation.dart';
import 'package:todo_flutter/ui/login.dart';
import 'package:todo_flutter/ui/home.dart';

class AppBloc {
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

  void gotoLoginPage(context) {
    Navigator.pushAndRemoveUntil(
      context, 
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
      ModalRoute.withName('/'),
    );
  }

  void gotoTodoListPage(context) {
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context) => TodoHome(),
      )
    );
  }

  void returnPage(context) {
    Navigator.pop(context);
  }
}

final appBloc = AppBloc();