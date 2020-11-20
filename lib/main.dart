import 'package:Susu_Messenger/screens/landing/landing_wrapper.dart';
import 'package:Susu_Messenger/screens/navigation_wrapper.dart';
import 'package:Susu_Messenger/screens/authenticate/login.dart';
import 'package:Susu_Messenger/screens/authenticate/sign_up.dart';
import 'package:Susu_Messenger/screens/authenticate/sign_up_info.dart';
import 'package:Susu_Messenger/screens/home/home_wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: LandingWrapper(),
    );
  }
}
