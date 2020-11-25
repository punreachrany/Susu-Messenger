import 'package:Susu_Messenger/models/login_user.dart';
import 'package:Susu_Messenger/services/database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  LoginUser _userFromFirebaseUser(User user) {
    print("In userfromfirebase");
    // print("email : ${user.email}");
    return user != null
        ? LoginUser(
            uid: user.uid,
            email: user.email,
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

  Future registerWithEmailAndPassword({
    String email,
    String password,
    String name,
    String gender,
    DateTime birthday,
    String university,
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user;

      await User_DatabaseService(uid: user.uid).createUserData(
        name: name,
        email: email,
        gender: gender,
        birthday: birthday,
        university: university,
        signInMethod: 'Email and Password',
        uid: user.uid,
      );
      print("Successful Sign");
      _userFromFirebaseUser(user);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future signInWithEmailAndPassword({String email, String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
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
