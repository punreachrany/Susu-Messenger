import 'dart:async';

import 'package:Susu_Messenger/models/conversation.dart';
import 'package:Susu_Messenger/models/login_user.dart';
import 'package:Susu_Messenger/models/user_information.dart';
import 'package:Susu_Messenger/services/database.dart';
import 'package:Susu_Messenger/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Chatroom extends StatefulWidget {
  final String university;

  const Chatroom({Key key, this.university}) : super(key: key);

  @override
  _ChatroomState createState() => _ChatroomState(university);
}

class _ChatroomState extends State<Chatroom> {
  String university;
  _ChatroomState(this.university);
  // ScrollController controller;
  TextEditingController messageController = new TextEditingController();
  List<Map> chat;
  String senderID = '';

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

  List<Map> menuItems = [
    {"text": "Photos & Videos", "icons": Icons.image, "color": Colors.amber},
    {"text": "Document", "icons": Icons.file_upload, "color": Colors.blue},
    {"text": "Audio", "icons": Icons.audiotrack, "color": Colors.orange},
    {"text": "Location", "icons": Icons.location_city, "color": Colors.green},
    {"text": "Contact", "icons": Icons.contact_phone, "color": Colors.purple},
  ];

  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 2 / 3,
            color: Color(0xff737373),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      height: 4,
                      width: 50,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: menuItems[index]["color"].shade50,
                            ),
                            height: 50,
                            width: 50,
                            child: Icon(
                              menuItems[index]["icons"],
                              size: 20,
                              color: menuItems[index]["color"].shade400,
                            ),
                          ),
                          title: Text(menuItems[index]["text"]),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget otherPeopleMessage(
      {String username, String messages, int index, bool isSameUser}) {
    return Container(
      margin: index == 0 ? EdgeInsets.only(bottom: 80) : EdgeInsets.all(0),
      // padding: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     child: CircleAvatar(child: Icon(Icons.person)),
          //   ),
          // ),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      border: Border.all(width: 1, color: Colors.grey[400]),
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    messages,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                isSameUser
                    ? Container()
                    : Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          username,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                isSameUser
                    ? Container()
                    : (index != 0 ? Divider() : Container()),
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

  Widget userMessage(
      {String username, String messages, int index, bool isSameUser}) {
    return Container(
      margin: index == 0 ? EdgeInsets.only(bottom: 80) : EdgeInsets.all(0),
      // padding: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlue.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      border: Border.all(width: 1, color: Colors.grey[400]),
                      color: Colors.lightBlue[100],
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    messages,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                isSameUser
                    ? Container()
                    : Container(
                        alignment: Alignment.centerRight,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          username,
                          // textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                isSameUser
                    ? Container()
                    : (index != 0 ? Divider() : Container()),
              ],
            ),
          ),
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
    final users = Provider.of<List<UserInformation>>(context) ?? [];
    final current_user = Provider.of<LoginUser>(context) ?? null;

    String prevUserID;

    // users.forEach((element) {
    //   print(element.name);
    // });

    // ==========
    // controller.animateTo(controller.position.maxScrollExtent,
    //     duration: Duration(milliseconds: 0), curve: Curves.easeOut);
    return Scaffold(
      backgroundColor: Colors.grey[50],
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            // height: 100,
            // margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.only(right: 16, top: 15, bottom: 15),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                      "assets/images/${university.toLowerCase().replaceAll(" ", "_")}.png"),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        university,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(color: Colors.green, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey.shade700,
                ),
              ],
            ),
          ),
        ),
      ),

      body: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            reverse: true,
            itemCount: messages.length,
            // controller: controller,
            itemBuilder: (context, index) {
              bool isSameUser = prevUserID == messages[index].senderID;

              prevUserID = messages[index].senderID;

              if (messages[index].senderID == current_user.uid) {
                return userMessage(
                    messages: messages[index].message,
                    // username: messages[index].senderID,
                    username: users
                        .where((element) =>
                            element.uid == messages[index].senderID)
                        .toList()[0]
                        .name,
                    index: index,
                    isSameUser: isSameUser);
              } else {
                return otherPeopleMessage(
                  messages: messages[index].message,
                  username: users
                      .where(
                          (element) => element.uid == messages[index].senderID)
                      .toList()[0]
                      .name,
                  index: index,
                  isSameUser: isSameUser,
                );
              }
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              // height: 80,
              width: double.infinity,
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    blurRadius: 20.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 10  horizontally
                      5.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showModal();
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    flex: 8,
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      controller: messageController,
                      maxLines: null,
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
                  ),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: () async {
                            await sendMessage(
                              university,
                              current_user.uid,
                              current_user.email,
                            );
                            // controller
                            //     .jumpTo(controller.position.maxScrollExtent);
                          },
                          child: Icon(Icons.send)))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
