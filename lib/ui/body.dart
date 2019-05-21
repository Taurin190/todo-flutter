import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';
import 'package:todo_flutter/ui/todo_card.dart';

class TodoBody extends StatelessWidget {
  final List<Todo> todoList;

  TodoBody(this.todoList);

  @override 
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: appBloc.todoList,
      initialData: appBloc.todoList.value,
      builder: (context, AsyncSnapshot<List<Todo>> snapshot) {
        List<Todo> todoList = snapshot.data;
        if (todoList.length == 0) {
          appBloc.fetchTodos();
          return Center(child: CircularProgressIndicator());
        }
        return GridView.builder(
          key: PageStorageKey("todoListView"),
          itemCount: todoList.length + 2,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, int index) {
            int len = todoList.length;
            if (index == len) {
              appBloc.fetchTodos();
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