import 'package:flutter/material.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';

class TodoCreationBody extends StatelessWidget {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Container(
          child: TextFormField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: "Todo Title"
            )
          ),
        ),
        Container(
          child: TextFormField(
            controller: _descriptionController,
            decoration: InputDecoration(
              labelText: "Todo Description"
            )
          ),
        ),
        Container(
          child: RaisedButton(
            onPressed: () => appBloc.createTodo(_titleController.text, _descriptionController.text),
            child: Text("CREATE"),
          ),
        ),
      ],
    );
  }
}