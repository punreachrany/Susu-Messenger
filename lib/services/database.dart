import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User_DatabaseService {
  //
  final String uid;

  User_DatabaseService({this.uid});

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future createUserData({
    String email,
    String name,
    String gender,
    DateTime birthday,
    String university,
    String uid,
    String signInMethod,
  }) async {
    return await userCollection.doc(uid).set({
      'uid': uid,
      'name': name,
      'email': email,
      'gender': gender,
      'birthday': birthday,
      'university': university,
      'signInMethod': signInMethod,
      'chatrooms': [],
      'friends': []
    });
  }
}
