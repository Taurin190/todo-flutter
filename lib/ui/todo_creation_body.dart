import 'package:flutter/material.dart';

class TodoCreationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Container(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Todo Title"
            )
          ),
        ),
        Container(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Todo Description"
            )
          ),
        ),
        Container(
          child: RaisedButton(
            onPressed: null,
            child: Text("CREATE"),
          ),
        ),
      ],
    );
  }
}