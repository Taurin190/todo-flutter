import 'package:todo_flutter/api/auth_api.dart';

class AuthBloc {
  final _api = AuthApi();
  login(String username, String password, void onLogin(), void onFailLogin()) async {
    bool isSuccessLogin = await _api.login(username, password);
    if (isSuccessLogin) {
      onLogin();
      return;
    }
    onFailLogin();
  }
}
final authBloc = AuthBloc();