import 'package:Susu_Messenger/models/conversation.dart';
import 'package:Susu_Messenger/models/login_user.dart';
import 'package:Susu_Messenger/models/user_information.dart';
import 'package:Susu_Messenger/screens/chat/chatroom.dart';
import 'package:Susu_Messenger/services/auth.dart';
import 'package:Susu_Messenger/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatroomWrapper extends StatelessWidget {
  ChatroomWrapper({this.university});
  final String university;
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    return StreamProvider<LoginUser>.value(
      value: _auth.user,
      child: StreamProvider<List<Conversation>>.value(
        value: User_DatabaseService().chatroomMesssages(chatroomID: university),
        child: StreamProvider<List<UserInformation>>.value(
          value: User_DatabaseService().userData,
          child: Chatroom(
            university: university,
          ),
        ),
      ),
    );
  }
}
