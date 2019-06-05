import 'package:flutter/material.dart';
import 'package:todo_flutter/entity/user.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage(this.user);
  final User user;

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: <Widget> [
          Container(
            child: Text(user.displayName),
          ),
          Container(
            child: Text(user.email),
          ),
          Container(
            child: Text(user.photoURL),
          ),
          Container(
            child: RaisedButton(
              onPressed: null,
              child: Text("Login"),
            ),
          ),
        ],
      );
  }
}