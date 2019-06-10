import 'package:flutter/material.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';
import 'package:todo_flutter/bloc/auth_bloc.dart';

class ForgotPassword extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        title: Text("Forgot Password"),
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
            child: RaisedButton(
              onPressed: () => authBloc.login(
                _usernameController.text, 
                _passwordController.text,
                (){
                  appBloc.gotoTodoListPage(context);
                }, 
                (){},
              ),
              child: Text("Reset Password"),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: () => appBloc.openSignUpPage(context),
              child: Text("Create an Account"),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: null,
              child: Text("Forgot password?"),
            ),
          ),
        ],
      ),
    );
  }
}