import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:todo_flutter/entity/user.dart';

class AuthApi {

  final _reference = FirebaseDatabase.instance.reference();

  Future<bool> login(String username, String password) async {
    return await true;
  }

  Future<User> getUser(String uid) async {
    DataSnapshot d = await _reference.child("todo").child(uid).once();
    User _user = new User();
    _user.userName = d.value["userName"];
    _user.uid = uid;
    return _user;
  }

  Future<void> createUser(User user) async {
    var newPostRef = _reference.child("user").push();
    return newPostRef.set({
      'username': user.userName,
      'email': user.email,
      'uid': user.uid,
    });
  }

  Future<void> logout() async {
  }
}