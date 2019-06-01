import 'package:rxdart/rxdart.dart';
import 'package:todo_flutter/api/auth_api.dart';

class AuthBloc {
  final _api = AuthApi();

  bool _isLogin = false;

  login(String username, String password, void onLogin(), void onFailLogin()) async {
    bool isSuccessLogin = await _api.login(username, password);
    if (isSuccessLogin) {
      _isLogin = true;
      onLogin();
      return;
    }
    _isLogin = false;
    onFailLogin();
  }

  bool isLogin() {
    return _isLogin;
  }

  logout() {
    _isLogin = false;
  }
}
final authBloc = AuthBloc();