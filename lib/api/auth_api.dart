import 'package:firebase_auth/firebase_auth.dart';

class AuthApi {

  final _auth = FirebaseAuth.instance;
  Future<bool> login(String username, String password) async {
    return await true;
  }

  Future<void> logout() async {
  }
}