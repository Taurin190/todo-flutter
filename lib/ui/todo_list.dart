import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/ui/todo_card.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';
import 'package:todo_flutter/bloc/todo_bloc.dart';

class TodoListView extends StatelessWidget {
  final List<Todo> todoList;

  TodoListView(this.todoList);

  @override 
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: todoBloc.todoList,
      initialData: todoBloc.todoList.value,
      builder: (context, AsyncSnapshot<List<Todo>> snapshot) {
        List<Todo> todoList = snapshot.data;
        if (todoList == null) {
          todoBloc.fetchTodos();
          return Center(
            child:CircularProgressIndicator(),
          );
        }
        if (todoList.length == 0) {
          return Center(
            child:Text(
              "No ToDo",
              style: TextStyle(
                  fontSize: 20.0,
                ),
            )
          );
        } 
        return ListView.builder(
          key: PageStorageKey("todoListView"),
          itemCount: todoList.length,
          itemBuilder: (context, int index) {
            int len = todoList.length;
            if (index == len) {
              todoBloc.fetchTodos();
            }
            return GestureDetector(
              onTap: () => appBloc.openTodoDetailPage(context, todoList[index]),
              child: TodoCard(todoList[index]),
            );
          },
        );
      }
    );
  }
}