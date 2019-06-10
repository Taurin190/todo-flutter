import 'package:rxdart/rxdart.dart';
import 'package:todo_flutter/api/auth_api.dart';
import 'package:todo_flutter/entity/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthBloc {
  final _api = AuthApi();

  bool _isLogin = false;

  User _user = null;

  login(
    String username, String password,
    void onLogin(), 
    void onFailLogin()
  ) async {
    try {
      FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: username, 
        password: password
      );
      print(user);
      _user = new User();
      _user.email = user.email;
      _user.uid = user.uid;
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

  createUser(
    String username, 
    String email, 
    String password,
    String passwordConfirm,  
    void onLogin(), 
    void onFailLogin(String errMessage)
  ) async {
    if (username.isEmpty || email.isEmpty || password.isEmpty || passwordConfirm.isEmpty) {
      onFailLogin("Necessary form is not filled");
      return;
    }

    if (password != passwordConfirm) {
      onFailLogin("Password doesn\'t matched");
      return;
    }
    FirebaseUser user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: username, password: password);
  }

  bool isLogin() {
    return _isLogin;
  }

  logout() {
    _isLogin = false;
  }

  User getUser() {
    return _user;
  }
}
final authBloc = AuthBloc();