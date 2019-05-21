import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/todo_hub.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;
  TodoCard(this.todo);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.all(10.0),
                  child: Text(
                    todo.title,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20.0)
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    bottom: 15.0
                  ),
                  child: Text(todo.description),
                ),
          ],
        ),
      ),
      ],
      ),
    );
  }
}