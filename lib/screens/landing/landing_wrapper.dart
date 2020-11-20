import 'package:Susu_Messenger/models/login_user.dart';
import 'package:Susu_Messenger/screens/landing/landing.dart';
import 'package:Susu_Messenger/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    return StreamProvider<LoginUser>.value(
      value: _auth.user,
      child: Landing(),
    );
  }
}
