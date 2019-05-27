import 'package:flutter/material.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';
import 'package:todo_flutter/bloc/auth_bloc.dart';

class TodoCard extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        title: Text("Login")
      ),
      body: Column(
        children: <Widget> [
          Container(
            child: TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: "Email"
              )
            ),
          ),
          Container(
            child: TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Password"
              ),
              obscureText: true,
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: null,
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}