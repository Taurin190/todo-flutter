import 'package:flutter/material.dart';
import 'package:todo_flutter/ui/show_dialog.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';
import 'package:todo_flutter/bloc/auth_bloc.dart';

class SignUpPage extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        title: Text("Sign up"),
      ),
      body: Column(
        children: <Widget> [
          Container(
            child: TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: "User name"
              )
            ),
          ),
          Container(
            child: TextFormField(
              controller: _emailController,
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
            child: TextFormField(
              controller: _passwordConfirmController,
              decoration: InputDecoration(
                labelText: "Password Confirmation"
              ),
              obscureText: true,
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: () => authBloc.createUser(
                _usernameController.text, 
                _passwordController.text, 
                (){
                  appBloc.gotoTodoListPage(context);
                }, 
                (){
                  showAlertDialog(
                    context, 
                    "Sign Up Failure", 
                    "ユーザ登録に失敗しました。",
                  );
                },
              ),
              child: Text("Sign up"),
            ),
          ),
        ],
      ),
    );
  }
}