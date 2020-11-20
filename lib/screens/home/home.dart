import 'package:Susu_Messenger/themes/colors.dart';
import 'package:Susu_Messenger/themes/hexColor.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Container(
          alignment: Alignment.center,
          child: InkWell(
            child: Text(
              "Edit",
              style: TextStyle(
                // color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: HexColor('#3498db'),
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        // padding: EdgeInsets.only(top: appBarHeight + 20),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        HexColor('#3498db'),
                        HexColor('#2980b9'),
                        Colors.blue[900],
                      ])),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        // color: HexColor('#2980b9'),

                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: CircleAvatar(
                          radius: 51,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                              // backgroundColor: Colors.grey[300],
                              radius: 50,
                              child: ClipOval(
                                  child: Image.asset(
                                      "assets/images/Punreach.jpg"))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Punreach Rany',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Seoul, South Korea',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Container(
                      //   // padding: EdgeInsets.only(bottom: 20),
                      //   child: Row(
                      //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: <Widget>[
                      //       Expanded(
                      //           //flex: 3,
                      //           child: Container(
                      //         padding: EdgeInsets.symmetric(vertical: 5),
                      //         child: Text(
                      //           "Hanyang University",
                      //           textAlign: TextAlign.center,
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 18,
                      //               fontWeight: FontWeight.w600),
                      //         ),
                      //       )),
                      //       Expanded(
                      //           //flex: 3,
                      //           child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.start,
                      //         children: <Widget>[
                      //           Container(
                      //             padding: EdgeInsets.symmetric(vertical: 5),
                      //             child: Text(
                      //               "Mobile App Developer",
                      //               textAlign: TextAlign.center,
                      //               style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontSize: 18,
                      //                   fontWeight: FontWeight.w600),
                      //             ),
                      //           ),
                      //         ],
                      //       )),
                      //     ],
                      //   ),
                      // ),
                      // Container(
                      //   padding: EdgeInsets.only(bottom: 20),
                      //   child: Row(
                      //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: <Widget>[
                      //       Expanded(
                      //           flex: 3,
                      //           child: Column(
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: <Widget>[
                      //               Container(
                      //                 padding:
                      //                     EdgeInsets.symmetric(vertical: 5),
                      //                 child: Text(
                      //                   "Information System",
                      //                   textAlign: TextAlign.center,
                      //                   style: TextStyle(
                      //                     color: Colors.white,
                      //                     fontSize: 15,
                      //                   ),
                      //                 ),
                      //               )
                      //             ],
                      //           )),
                      //       Expanded(
                      //         flex: 3,
                      //         child: Column(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: <Widget>[
                      //             Container(
                      //               padding: EdgeInsets.symmetric(vertical: 5),
                      //               child: Text(
                      //                 "Flutter",
                      //                 textAlign: TextAlign.center,
                      //                 style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontSize: 15,
                      //                 ),
                      //               ),
                      //             ),
                      //             Container(
                      //               padding: EdgeInsets.symmetric(vertical: 5),
                      //               child: Text(
                      //                 "iOS (Swift)",
                      //                 textAlign: TextAlign.center,
                      //                 style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontSize: 15,
                      //                 ),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "ABOUT",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Text(
                              "Self-motivated and future-oriented undergraduate student with a demonstrated experience in both Cross-Platform and iOS Application Development and Data Science. Versed in plan making and problem solving under constraint. Adapting quickly to challenges and changing environments. Quick learner with strong interpersonal and communication skills. ",
                              style: TextStyle(fontSize: 14),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      thickness: 2,
                    )),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "CONTACT",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.phone),
                            SizedBox(width: 10),
                            Text(
                              "010-9732-8171",
                              style: TextStyle(fontSize: 19),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.email),
                          SizedBox(width: 10),
                          Text(
                            "punreachmaths@gmail.com",
                            style: TextStyle(fontSize: 19),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      thickness: 2,
                    )),
                Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "SOCIAL MEDIA",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              // flex: 1,
                              child: Container(
                                  padding: EdgeInsets.only(right: 12),
                                  child:
                                      Image.asset("assets/images/github.png")),
                            ),
                            Expanded(
                              // flex: 1,
                              child: Container(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Image.asset(
                                      "assets/images/linkedin.png")),
                            ),
                            Expanded(
                              // flex: 1,
                              child: Container(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Image.asset(
                                      "assets/images/facebook.png")),
                            ),
                            Expanded(
                              // flex: 1,
                              child: Container(
                                  padding: EdgeInsets.only(right: 12),
                                  child:
                                      Image.asset("assets/images/google.png")),
                            ),
                            Expanded(
                              // flex: 1,
                              child: Container(
                                  padding: EdgeInsets.only(right: 12),
                                  child:
                                      Image.asset("assets/images/kakao.png")),
                            ),
                            // Container(
                            //   padding: EdgeInsets.only(right: 10),
                            //   child: Image.asset(
                            //     "assets/images/github.png",
                            //     width: 50,
                            //     height: 50,
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.only(right: 10),
                            //   child: Image.asset(
                            //     "assets/images/linkedin.png",
                            //     width: 50,
                            //     height: 50,
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.only(right: 10),
                            //   child: Image.asset(
                            //     "assets/images/facebook.png",
                            //     width: 50,
                            //     height: 50,
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.only(right: 10),
                            //   child: Image.asset(
                            //     "assets/images/kakao.png",
                            //     width: 50,
                            //     height: 50,
                            //   ),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.only(right: 10),
                            //   child: Image.asset(
                            //     "assets/images/google.png",
                            //     width: 50,
                            //     height: 50,
                            //   ),
                            // ),
                            // Expanded(
                            //   flex: 2,
                            //   child: Container(),
                            // ),
                            // Expanded(
                            //     flex: 1,
                            //     child: Container(
                            //         padding: EdgeInsets.only(right: 10),
                            //         child: Image.asset(
                            //             "assets/images/facebook.png"))),
                            // // SizedBox(width: 10),
                            // Expanded(
                            //     flex: 1,
                            //     child: Container(
                            //         padding: EdgeInsets.only(right: 10),
                            //         child: Image.asset(
                            //             "assets/images/kakao.png"))),
                            // Expanded(
                            //     flex: 1,
                            //     child: Container(
                            //         padding: EdgeInsets.only(right: 10),
                            //         child: Image.asset(
                            //             "assets/images/google.png"))),
                            // // Expanded(
                            // //   flex: 2,
                            // //   child: Container(),
                            // // )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
