import 'package:Susu_Messenger/services/auth.dart';
import 'package:Susu_Messenger/shares/loading.dart';
import 'package:flutter/material.dart';

class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  final AuthService _auth = AuthService();
  bool loading = false;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double opacity = 0.6;
    final Color boxBorderColor = Colors.grey[300];
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  SafeArea(
                    child: Container(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          // Text(
                          //   "Developer",
                          //   style:
                          //       TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          // ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 8, right: 8, top: 2, bottom: 2),
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              // borderRadius: BorderRadius.circular(10),
                              // color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(opacity),
                                  blurRadius: 10.0, // soften the shadow
                                  spreadRadius: 0.0, //extend the shadow
                                  offset: Offset(
                                    0.0, // Move to right 10  horizontally
                                    0.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                              color: Color(0xFF2980b9),
                            ),
                            child: GestureDetector(
                              onTap: () async {
                                setState(() {
                                  loading = true;
                                });
                                await _auth.signOut();
                                setState(() {
                                  loading = false;
                                });
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Log out",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
                  Container(
                    // height: 100,
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 30, bottom: 15),
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: boxBorderColor),
                            borderRadius: BorderRadius.circular(10),
                            // color: Colors.white,

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/images/Punreach.jpg")),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                // border: Border.all(),
                                // borderRadius: BorderRadius.circular(10),
                                ),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Punreach Rany",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Mobile App Developer",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/location_pin.png",
                                      width: 18,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          "Seoul, South Korea",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            // fontWeight: FontWeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    width: double.infinity,
                    // decoration: BoxDecoration(border: Border.all()),
                    child: Text(
                      "Self-motivated and future-oriented developer with a experience in Mobile App Development",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 15, bottom: 15),
                    child: Text(
                      "Programming Skills",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          width: 100,
                          height: 100,

                          decoration: BoxDecoration(
                            border: Border.all(color: boxBorderColor),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                // decoration: BoxDecoration(border: Border.all()),
                                child: ClipRect(
                                  child: Image.asset(
                                    "assets/logos/Flutter.png",
                                    // width: 60,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: Text(
                                  "Flutter",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: boxBorderColor),
                            borderRadius: BorderRadius.circular(10),
                            // borderRadius: BorderRadius.circular(10),
                            color: Colors.white,

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                // decoration: BoxDecoration(border: Border.all()),
                                child: ClipRect(
                                  child: Image.asset(
                                    "assets/logos/Swift.png",
                                    // width: 60,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: Text(
                                  "Swift",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: boxBorderColor),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                // decoration: BoxDecoration(border: Border.all()),
                                child: ClipRect(
                                  child: Image.asset(
                                    "assets/logos/React_Native.png",
                                    // width: 60,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: Text(
                                  "React Native",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: boxBorderColor),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                // decoration: BoxDecoration(border: Border.all()),
                                child: ClipRect(
                                  child: Image.asset(
                                    "assets/logos/OpenCV.png",
                                    // width: 60,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: Text(
                                  "CV",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: boxBorderColor),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                // decoration: BoxDecoration(border: Border.all()),
                                child: ClipRect(
                                  child: Image.asset(
                                    "assets/logos/Firebase.png",
                                    // width: 60,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: Text(
                                  "Firebase",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: boxBorderColor),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                // decoration: BoxDecoration(border: Border.all()),
                                child: ClipRect(
                                  child: Image.asset(
                                    "assets/logos/Solidity.png",
                                    // width: 60,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: Text(
                                  "Solidity",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 30, bottom: 15),
                    child: Text(
                      "Experience",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(opacity),
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 26,
                            child: ClipOval(
                              // borderRadius: BorderRadius.circular(10),
                              child: CircleAvatar(
                                  radius: 25,
                                  child: Image.asset(
                                      "assets/logos/oysterable.jpg")),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            // width: double.infinity,
                            padding: EdgeInsets.only(left: 10),
                            // decoration: BoxDecoration(border: Border.all()),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Oysterable Company",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  child: Text(
                                    "July 01, 2020 ~ August 30, 2020",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 13),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "Mobile Frontend Developer",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Text(
                                    "- Developed with Flutter & Firebase",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "- Implemented Push Notification",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "- Implemented App Localization",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "- Handled Device Permission",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 30, bottom: 15),
                    child: Text(
                      "Language Skills",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 50,
                                // height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.grey,
                                )),
                                child: ClipRect(
                                  child: Image.asset(
                                    "assets/images/American.jpg",
                                    // width: 60,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: Text(
                                  "English",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 50,
                                // height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.grey,
                                )),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: ClipRect(
                                  child: Image.asset(
                                    "assets/images/Korean.jpg",
                                    // width: 60,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: Text(
                                  "Korean",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(opacity),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 50,
                                // height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.grey,
                                )),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: ClipRect(
                                  child: Image.asset(
                                    "assets/images/Cambodia.jpg",
                                    // width: 60,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                // decoration: BoxDecoration(border: Border.all()),
                                child: Text(
                                  "Khmer",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
