import 'dart:async';

import 'package:Susu_Messenger/themes/colors.dart';
import 'package:flutter/material.dart';

class Chatroom extends StatefulWidget {
  @override
  _ChatroomState createState() => _ChatroomState();
}

class _ChatroomState extends State<Chatroom> {
  ScrollController controller;
  List<Map> chat;
  @override
  void initState() {
    super.initState();
    controller = new ScrollController();
    chat = [
      {
        "user": "Punreach Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punrong Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punrong Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punreach Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punrong Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punreach Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punrong Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punreach Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punrong Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punreach Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punrong Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punreach Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punmonineath Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {
        "user": "Punrong Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null. I cannot believe it at all. He is awesome."
      },
      {
        "user": "Punreach Rany",
        "picture": Icons.person,
        "message":
            "Ignoring header X-Firebase-Locale because its value was null. I cannot believe it at all. He is awesome."
      },
    ];

    // if (mounted) {
    //   controller.jumpTo(controller.position.maxScrollExtent);
    // }

    // // controller.jumpTo(controller.position.maxScrollExtent);
    // Timer.periodic(Duration(milliseconds: 500), (timer) {
    //   if (mounted) {
    //     controller.jumpTo(controller.position.maxScrollExtent);
    //   } else {
    //     timer.cancel();
    //   }
    // });
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => {controller.jumpTo(controller.position.maxScrollExtent)});
  }

  Widget otherPeopleMessage({String username, String messages}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: CircleAvatar(child: Icon(Icons.person)),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(username),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    messages,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget userMessage({String username, String messages}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 8,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.centerLeft,
              child: Text(messages),
            ),
          ),
          // Expanded(
          //   flex: 1,
          //   child: Icon(Icons.person),
          // ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // controller.animateTo(controller.position.maxScrollExtent,
    //     duration: Duration(milliseconds: 0), curve: Curves.easeOut);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Hanyang University"),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: double.infinity,
        color: Colors.grey[200],
        // decoration: BoxDecoration(
        //     border: Border(top: BorderSide(color: primaryColor, width: 2.0))),
        // height: 40
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 1, child: Icon(Icons.add_box)),
            Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey[300],
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        hintText: 'Type your message'),
                  ),
                )),
            Expanded(flex: 1, child: Icon(Icons.send))
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: chat.length,
          controller: controller,
          itemBuilder: (context, index) {
            if (chat[index]["user"] == "Punreach Rany") {
              return userMessage(
                messages: chat[index]["message"],
                username: chat[index]["user"],
              );
              // return ListTile(
              //   // leading: Icon(chat[index]["picture"]),
              //   title: Text(chat[index]["user"]),
              //   subtitle: Text(chat[index]["message"]),
              //   trailing: Icon(chat[index]["picture"]),
              //   onTap: () {
              //     print(chat[index]["user"]);
              //   },
              // );
            } else {
              return otherPeopleMessage(
                messages: chat[index]["message"],
                username: chat[index]["user"],
              );
              // return ListTile(
              //   leading: Icon(chat[index]["picture"]),
              //   title: Text(chat[index]["user"]),
              //   subtitle: Text(chat[index]["message"]),
              //   // trailing: Icon(chat[index]["picture"]),
              //   onTap: () {
              //     print(chat[index]["user"]);
              //   },
              // );
            }
          },
        ),
      ),
    );
  }
}
