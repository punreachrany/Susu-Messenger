import 'dart:async';

import 'package:Susu_Messenger/models/conversation.dart';
import 'package:Susu_Messenger/models/login_user.dart';
import 'package:Susu_Messenger/services/database.dart';
import 'package:Susu_Messenger/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Chatroom extends StatefulWidget {
  final String uid;

  const Chatroom({Key key, this.uid}) : super(key: key);

  @override
  _ChatroomState createState() => _ChatroomState(uid);
}

class _ChatroomState extends State<Chatroom> {
  String uid;
  _ChatroomState(this.uid);
  // ScrollController controller;
  TextEditingController messageController = new TextEditingController();
  List<Map> chat;
  @override
  void initState() {
    super.initState();
    // controller = new ScrollController();

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
    // WidgetsBinding.instance.addPostFrameCallback(
    //     (_) => {controller.jumpTo(controller.position.maxScrollExtent)});
  }

  Widget otherPeopleMessage({String username, String messages, int index}) {
    return Container(
      margin: index == 0 ? EdgeInsets.only(bottom: 80) : EdgeInsets.all(0),
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

  Widget userMessage({String username, String messages, int index}) {
    return Container(
      margin: index == 0 ? EdgeInsets.only(bottom: 80) : EdgeInsets.all(0),
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
                  color: Colors.lightBlue[800],
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.centerLeft,
              child: Text(
                messages,
                style: TextStyle(color: Colors.white),
              ),
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

  sendMessage(String chatRoomID, String uid, String email) async {
    print("Inside Send messages");
    if (messageController.text.isNotEmpty) {
      print("If Statement");
      Map<String, dynamic> messageMap = {
        "message": messageController.text,
        "senderEmail": email,
        "senderID": uid,
        "date": DateTime.now(),
      };
      print(messageMap);

      await User_DatabaseService()
          .addConversationMessages(chatRoomID, messageMap);
      messageController.text = "";
      print("Exit");
    }
  }

  @override
  Widget build(BuildContext context) {
    // print("User $uid");
    final messages = Provider.of<List<Conversation>>(context) ?? [];
    final user = Provider.of<LoginUser>(context) ?? null;

    // ==========
    // controller.animateTo(controller.position.maxScrollExtent,
    //     duration: Duration(milliseconds: 0), curve: Curves.easeOut);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Hanyang University"),
      ),

      body: Stack(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              // controller: controller,
              itemBuilder: (context, index) {
                // print(messages[index].message);
                // if (index == messages.length) {
                //   return Container(
                //     height: 80,
                //   );
                // }
                if (messages[index].senderID == user.uid) {
                  return userMessage(
                    messages: messages[index].message,
                    username: messages[index].senderEmail,
                    index: index,
                  );
                } else {
                  return otherPeopleMessage(
                    messages: messages[index].message,
                    username: messages[index].senderEmail,
                    index: index,
                  );
                }
              },
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                          // padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey[300],
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                            controller: messageController,
                            maxLines: 1,
                            decoration: new InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                hintText: 'Type your message'),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: InkWell(
                            onTap: () async {
                              await sendMessage(
                                  "devil@yahoo.com_punreach@yahoo.com",
                                  user.uid,
                                  user.email);
                              // controller
                              //     .jumpTo(controller.position.maxScrollExtent);
                            },
                            child: Icon(Icons.send)))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
