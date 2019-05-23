import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';

class TodoDetailView extends StatelessWidget {
  final Todo todo;
  TodoDetailView(this.todo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        leading: new IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            appBloc.returnPage(context);
          },
        ),
        title: Text(todo.title)),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.all(22.0),
            child:Text(
                todo.description,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            
          ),
          Container(
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: null,
              child: Text("DONE"),
            ),
          ),
        ],
      ),
    );
  } 
}