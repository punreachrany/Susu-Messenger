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
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chats",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink[50]),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "New",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[400],
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey[100]))),
              ),
            ),
            // ListView.builder(itemBuilder: null)

            ListView.builder(
              itemCount: groupChat.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
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
                        // builder: (context) => OtherChatUI(),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // List<Map> groupChat = [
  //   {"name": "Hanyang University", "picture": Icons.school},
  //   {"name": "Yonsei University", "picture": Icons.school},
  //   {"name": "Korea University", "picture": Icons.school},
  //   {"name": "Seoul National University", "picture": Icons.school},
  //   {"name": "Kyunghee University", "picture": Icons.school},
  //   {"name": "Sungkyunkwan University", "picture": Icons.school},
  //   {"name": "Jungang University", "picture": Icons.school},
  //   {"name": "Sogang University", "picture": Icons.school},
  //   {"name": "Kunkok University", "picture": Icons.school},
  //   {"name": "Ewha University", "picture": Icons.school},
  //   {"name": "Reach University", "picture": Icons.school},
  // ];
  // @override
  // Widget build(BuildContext context) {
  //   final AuthService _auth = AuthService();
  //   final user = Provider.of<LoginUser>(context);
  //   print("${user.uid}");
  //   return Scaffold(
  //     appBar: AppBar(
  //       leading: Icon(
  //         Icons.edit,
  //         color: Colors.black,
  //       ),
  //       centerTitle: true,
  //       backgroundColor: Colors.white,
  //       title: Text(
  //         "Chats",
  //         style: TextStyle(color: Colors.black),
  //       ),
  //       actions: <Widget>[
  //         IconButton(
  //             icon: Icon(
  //               Icons.search,
  //               color: Colors.black,
  //             ),
  //             onPressed: () {}),
  //         IconButton(
  //             icon: Icon(
  //               Icons.camera_alt,
  //               color: Colors.black,
  //             ),
  //             onPressed: () {})
  //       ],
  //     ),
  //     body: ListView.builder(
  //       itemCount: groupChat.length,
  //       itemBuilder: (context, index) {
  //         return ListTile(
  //           leading: Icon(groupChat[index]["picture"]),
  //           title: Text(groupChat[index]["name"]),
  //           subtitle: Text("People are talking"),
  //           trailing: Icon(Icons.arrow_forward),
  //           onTap: () {
  //             print(groupChat[index]["name"]);
  //             Navigator.push(
  //               context,
  //               MaterialPageRoute(
  //                 builder: (context) => ChatroomWrapper(),
  //               ),
  //             );
  //           },
  //         );
  //       },
  //     ),
  //   );
  // }
}
