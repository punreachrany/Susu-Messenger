import 'package:Susu_Messenger/navigation_wrapper.dart';
import 'package:Susu_Messenger/screens/authenticate/login.dart';
import 'package:Susu_Messenger/screens/authenticate/sign_up.dart';
import 'package:Susu_Messenger/screens/authenticate/sign_up_info.dart';
import 'package:Susu_Messenger/screens/home/home_wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NavigationWrapper(),
    );
  }
}
