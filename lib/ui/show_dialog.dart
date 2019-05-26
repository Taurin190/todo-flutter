import 'package:flutter/material.dart';
class ShowDialog extends StatelessWidget{

  final String message;

  ShowDialog(this.message);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0))),
      contentPadding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      content: Container(
        width: 250.0,
        height: 100.0,
        child: Text(message),
      )
    );
  }
}