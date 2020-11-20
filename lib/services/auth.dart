import 'package:Susu_Messenger/models/login_user.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  LoginUser _userFromFirebaseUser(User user) {
    print("In userfromfirebase");
    return user != null
        ? LoginUser(
            uid: user.uid,
          )
        : null;
  }

  // Auth Change user Stream
  Stream<LoginUser> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future signAnonymously() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      User user = userCredential.user;
      print("Successful Sign");
      _userFromFirebaseUser(user);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future signOut() async {
    try {
      await _auth.signOut();
      _userFromFirebaseUser(null);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
