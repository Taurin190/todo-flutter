import 'package:flutter/material.dart';
import 'package:todo_flutter/ui/body.dart';

class TodoHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0, 
      child: Text("Cool News")
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.share),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: new TodoBody(),
    );
  }
}