import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:todo_flutter/entity/user.dart';

class AuthApi {

  final _auth = FirebaseAuth.instance;
  final _reference = FirebaseDatabase.instance.reference();

  Future<bool> login(String username, String password) async {
    return await true;
  }

  Future<void> createUser(User user) async {
    _reference.child("users").onChildChanged.listen((data){
      DataSnapshot d = data.snapshot;
      d.value.forEach((key, value){

      });
    });
  }

  Future<void> logout() async {
  }
}