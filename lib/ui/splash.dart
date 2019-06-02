import 'package:flutter/material.dart';
import 'package:todo_flutter/bloc/auth_bloc.dart';

class Slpash extends StatefulWidget {
  Slpash({Key key});
  @override
  SplashState createState() {
    return new SplashState();
  }
}

class SplashState extends State<Slpash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: Text("TODO Flutter")
      ),
    );
  }
   
}