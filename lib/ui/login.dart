import 'package:flutter/material.dart';
import 'package:todo_flutter/ui/show_dialog.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';
import 'package:todo_flutter/bloc/auth_bloc.dart';

class LoginPage extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        title: Text("Login"),
      ),
      body: Container( 
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20.0),
        child: Column(
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
                onPressed: () => {
                  if (_usernameController.text == "") {
                    showAlertDialog(
                      context, 
                      "Login Failure",
                      "メールアドレスが空です。"
                    )
                  } else if(_passwordController.text == "") {
                    showAlertDialog(
                      context, 
                      "Login Failure",
                      "パスワードが空です。"
                    )
                  } else {
                    authBloc.login(
                      _usernameController.text, 
                      _passwordController.text, 
                      (){
                        appBloc.gotoTodoListPage(context);
                      }, 
                      (){
                        showAlertDialog(
                          context, 
                          "Login Failure",
                          "ログインに失敗しました。\nメールアドレス、パスワードを確認して下さい。"
                        );
                      },
                    )
                  }
                },
                child: Text("Login"),
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
                onPressed: () => appBloc.openForgotPasswordPage(context),
                child: Text("Forgot password?"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}