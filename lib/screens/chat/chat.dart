import 'package:Susu_Messenger/models/login_user.dart';
import 'package:Susu_Messenger/screens/chat/chatroom.dart';
import 'package:Susu_Messenger/screens/chat/chatroom_wrapper.dart';
import 'package:Susu_Messenger/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Map> groupChat = [
    {"name": "Hanyang University", "picture": Icons.school},
    {"name": "Yonsei University", "picture": Icons.school},
    {"name": "Korea University", "picture": Icons.school},
    {"name": "Seoul National University", "picture": Icons.school},
    {"name": "Kyunghee University", "picture": Icons.school},
    {"name": "Sungkyunkwan University", "picture": Icons.school},
    {"name": "Jungang University", "picture": Icons.school},
    {"name": "Sogang University", "picture": Icons.school},
    {"name": "Kunkok University", "picture": Icons.school},
    {"name": "Ewha University", "picture": Icons.school},
    {"name": "Reach University", "picture": Icons.school},
  ];
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    final user = Provider.of<LoginUser>(context);
    print("${user.uid}");
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.edit,
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Chats",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView.builder(
        itemCount: groupChat.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(groupChat[index]["picture"]),
            title: Text(groupChat[index]["name"]),
            subtitle: Text("People are talking"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              print(groupChat[index]["name"]);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatroomWrapper(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
