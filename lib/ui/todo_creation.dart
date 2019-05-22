import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';
import 'package:todo_flutter/ui/todo_creation_body.dart';

class TodoCreation extends StatelessWidget {

  TodoCreation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        leading: new IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            appBloc.returnPage(context);
          },
        ),
        title: Text("New Todo"),
      ),
      body: TodoCreationBody(),
    );
  }
}