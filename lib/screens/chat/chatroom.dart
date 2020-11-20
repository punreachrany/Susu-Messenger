import 'dart:async';

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
            "Ignoring header X-Firebase-Locale because its value was null"
      },
      {"user": "Punreach Rany", "picture": Icons.person, "message": "Vola"},
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
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        // height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 8, child: TextFormField()),
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
              return ListTile(
                // leading: Icon(chat[index]["picture"]),
                title: Text(chat[index]["user"]),
                subtitle: Text(chat[index]["message"]),
                trailing: Icon(chat[index]["picture"]),
                onTap: () {
                  print(chat[index]["user"]);
                },
              );
            } else {
              return ListTile(
                leading: Icon(chat[index]["picture"]),
                title: Text(chat[index]["user"]),
                subtitle: Text(chat[index]["message"]),
                // trailing: Icon(chat[index]["picture"]),
                onTap: () {
                  print(chat[index]["user"]);
                },
              );
            }
          },
        ),
      ),
    );
  }
}
