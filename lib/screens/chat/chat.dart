import 'package:Susu_Messenger/models/login_user.dart';
import 'package:Susu_Messenger/models/university.dart';
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
  @override
  Widget build(BuildContext context) {
    final universities = Provider.of<List<University>>(context) ?? [];
    // universities.forEach((university) {
    //   print(university.id);
    // });
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            // SafeArea(
            //   child: Container(
            //     padding: EdgeInsets.only(left: 16, right: 16, top: 10),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: <Widget>[
            //         Text(
            //           "Chats",
            //           style:
            //               TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //         ),
            //         Container(
            //           padding:
            //               EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
            //           height: 30,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(25),
            //               color: Color(0xFF2980b9)),
            //           child: Row(
            //             children: <Widget>[
            //               Icon(
            //                 Icons.add,
            //                 color: Colors.white,
            //                 size: 20,
            //               ),
            //               SizedBox(
            //                 width: 2,
            //               ),
            //               Text(
            //                 "New",
            //                 style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 14,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.all(16),
            //   child: TextField(
            //     decoration: InputDecoration(
            //         hintText: "Search...",
            //         hintStyle: TextStyle(color: Colors.grey[400]),
            //         prefixIcon: Icon(
            //           Icons.search,
            //           color: Colors.grey[400],
            //           size: 20,
            //         ),
            //         filled: true,
            //         fillColor: Colors.grey[200],
            //         contentPadding: EdgeInsets.all(8),
            //         enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(10),
            //             borderSide: BorderSide(color: Colors.grey[100]))),
            //   ),
            // ),
            // ListView.builder(itemBuilder: null)
            SafeArea(
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chatrooms",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFF2980b9)),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "New",
                            style: TextStyle(
                              color: Colors.white,
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
              margin: EdgeInsets.all(16),
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 10  horizontally
                      0.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
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
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey[500]))),
              ),
            ),

            ListView.separated(
              itemCount: universities.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return ListTile(
                  dense: false,
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.grey[100],
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                              "assets/images/${universities[index].id.toLowerCase().replaceAll(" ", "_")}.png"),
                          maxRadius: 20,
                        ),
                      ),
                      VerticalDivider(),
                    ],
                  ),

                  // leading: Icon(Icons.school),
                  title: Text(
                    universities[index].id,
                    style: TextStyle(fontSize: 20),
                  ),
                  // subtitle: Text("People are talking"),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Colors.grey[500], size: 30.0),

                  onTap: () {
                    print(universities[index].id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ChatroomWrapper(university: universities[index].id),
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
}
