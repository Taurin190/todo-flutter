import 'package:flutter/material.dart';
import 'package:todo_flutter/bloc/app_bloc.dart';
import 'package:todo_flutter/bloc/auth_bloc.dart';
import 'dart:async';

class Slpash extends StatefulWidget {
  Slpash({Key key});
  @override
  SplashState createState() {
    return new SplashState();
  }
}

class SplashState extends State<Slpash> {
  bool _isLogin;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _isLogin = authBloc.isLogin();
    _startTimer();
  }
  _startTimer() async {
    Timer(Duration(seconds: 2), () {
      if (!_isLogin) {
        appBloc.gotoLoginPage(context);
      } else {
        appBloc.gotoTodoListPage(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text(
          "TODO Flutter",
          style: TextStyle(
            fontSize: 50.0,
          ),
        )
      ),
    );
  }
   
}