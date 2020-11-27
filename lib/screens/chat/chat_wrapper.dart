import 'package:Susu_Messenger/models/login_user.dart';
import 'package:Susu_Messenger/models/university.dart';
import 'package:Susu_Messenger/screens/chat/chat.dart';
import 'package:Susu_Messenger/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<LoginUser>(context);
    // print("${user.uid}");
    return StreamProvider<List<University>>.value(
      value: User_DatabaseService().universityData,
      child: Chat(),
    );
  }
}
