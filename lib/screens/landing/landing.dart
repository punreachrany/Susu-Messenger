import 'package:Susu_Messenger/models/login_user.dart';
import 'package:Susu_Messenger/screens/authenticate/login.dart';
import 'package:Susu_Messenger/screens/navigation_wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Landing extends StatelessWidget {
  // User _user;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<LoginUser>(context);
    if (user == null) {
      print("NO User");
      return Login();
    } else {
      print("Have a user logged in");
      return NavigationWrapper();
    }
  }
}
