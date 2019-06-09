import 'package:rxdart/rxdart.dart';
import 'package:todo_flutter/api/auth_api.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthBloc {
  final _api = AuthApi();

  bool _isLogin = false;

  login(String username, String password, void onLogin(), void onFailLogin()) async {
    try {
      FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: username, 
        password: password
      );
      print(user);
    } catch (e) {
      print(e);
      onFailLogin();
      return;
    }
    onLogin();
  }

  signIn(String username, String password, void onLogin(), void onFailLogin()) async {
    FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: username, password: password);
  }

  createUser(String username, String password, void onLogin(), void onFailLogin()) async {
    FirebaseUser user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: username, password: password);
  }

  bool isLogin() {
    return _isLogin;
  }

  logout() {
    _isLogin = false;
  }
}
final authBloc = AuthBloc();