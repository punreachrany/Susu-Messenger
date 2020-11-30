import 'package:Susu_Messenger/themes/colors.dart';
import 'package:Susu_Messenger/themes/hexColor.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map> friends = [
    {
      "name": "The Devil",
      "image": "assets/images/Devil.jpg",
      "status": "What do you truly desire?"
    },
    {
      "name": "Steven",
      "image": "assets/images/Steven.jpg",
      "status":
          "When I die, don't bring me to the hospital. Bring me to Anfield. I was born there and I will die there."
    }
  ];

  @override
  Widget build(BuildContext context) {
    double appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Friends",
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
            Container(
              padding: EdgeInsets.only(left: 17, right: 16, top: 10, bottom: 5),
              child: Text("Profile"),
            ),
            ListTile(
              dense: false,
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    // radius: 21,
                    // backgroundColor: Colors.grey[500],
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("assets/images/Punreach.jpg",
                          fit: BoxFit.cover),
                      // backgroundColor: Colors.white,
                      // backgroundImage:

                      // maxRadius: 20,
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                  ),
                ],
              ),

              // leading: Icon(Icons.school),
              title: Text(
                "Punreach Rany",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "It's not just scary; it's about to be legendary!",
                maxLines: 2,
              ),
              // trailing: Icon(Icons.edit, color: Colors.grey[500], size: 25.0),

              onTap: () {},
            ),

            // ListView.builder(itemBuilder: null)
            Container(
              padding: EdgeInsets.only(left: 17, right: 16, top: 30),
              child: Text("Friends"),
            ),
            ListView.separated(
              itemCount: friends.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 5),
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return Divider(
                  // color: Colors.grey[500],
                  thickness: 1,
                );
              },
              itemBuilder: (context, index) {
                return ListTile(
                  dense: false,
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        // radius: 21,
                        // backgroundColor: Colors.grey[500],
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(friends[index]["image"],
                              fit: BoxFit.cover),
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.black,
                      ),
                    ],
                  ),

                  // leading: Icon(Icons.school),
                  title: Text(
                    friends[index]["name"],
                    style: TextStyle(fontSize: 20),
                  ),
                  // subtitle: Text("People are talking"),
                  trailing: Icon(Icons.keyboard_arrow_right,
                      color: Colors.grey[500], size: 30.0),
                  subtitle: Text(friends[index]["status"],
                      maxLines: 2, overflow: TextOverflow.ellipsis),

                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     elevation: 0.0,
    //     leading: Container(
    //       alignment: Alignment.center,
    //       child: InkWell(
    //         child: Text(
    //           "Edit",
    //           style: TextStyle(
    //             // color: Colors.black,
    //             fontSize: 15,
    //           ),
    //         ),
    //       ),
    //     ),
    //     centerTitle: true,
    //     backgroundColor: HexColor('#3498db'),
    //     title: Text(
    //       "Profile",
    //       style: TextStyle(fontSize: 20),
    //     ),
    //     actions: <Widget>[
    //       IconButton(
    //           icon: Icon(
    //             Icons.menu,
    //             color: Colors.white,
    //           ),
    //           onPressed: () {})
    //     ],
    //   ),
    //   backgroundColor: Colors.white,
    //   body: Container(
    //     // padding: EdgeInsets.only(top: appBarHeight + 20),
    //     width: double.infinity,
    //     height: double.infinity,
    //     child: SingleChildScrollView(
    //         physics: AlwaysScrollableScrollPhysics(),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: <Widget>[
    //             Container(
    //               decoration: BoxDecoration(
    //                   gradient: LinearGradient(
    //                       begin: Alignment.topCenter,
    //                       end: Alignment.bottomCenter,
    //                       colors: [
    //                     HexColor('#3498db'),
    //                     HexColor('#2980b9'),
    //                     Colors.blue[900],
    //                   ])),
    //               child: Column(
    //                 children: <Widget>[
    //                   Container(
    //                     width: double.infinity,
    //                     // color: HexColor('#2980b9'),

    //                     padding: EdgeInsets.symmetric(vertical: 10),
    //                     child: CircleAvatar(
    //                       radius: 51,
    //                       backgroundColor: Colors.black,
    //                       child: CircleAvatar(
    //                           // backgroundColor: Colors.grey[300],
    //                           radius: 50,
    //                           child: ClipOval(
    //                               child: Image.asset(
    //                                   "assets/images/Punreach.jpg"))),
    //                     ),
    //                   ),
    //                   Container(
    //                     padding: EdgeInsets.only(bottom: 10),
    //                     child: Text(
    //                       'Punreach Rany',
    //                       style: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ),
    //                   Container(
    //                     padding: EdgeInsets.only(bottom: 20),
    //                     child: Text(
    //                       'Seoul, South Korea',
    //                       style: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 18,
    //                         // fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ),
    //                   // Container(
    //                   //   // padding: EdgeInsets.only(bottom: 20),
    //                   //   child: Row(
    //                   //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   //     crossAxisAlignment: CrossAxisAlignment.start,
    //                   //     children: <Widget>[
    //                   //       Expanded(
    //                   //           //flex: 3,
    //                   //           child: Container(
    //                   //         padding: EdgeInsets.symmetric(vertical: 5),
    //                   //         child: Text(
    //                   //           "Hanyang University",
    //                   //           textAlign: TextAlign.center,
    //                   //           style: TextStyle(
    //                   //               color: Colors.white,
    //                   //               fontSize: 18,
    //                   //               fontWeight: FontWeight.w600),
    //                   //         ),
    //                   //       )),
    //                   //       Expanded(
    //                   //           //flex: 3,
    //                   //           child: Column(
    //                   //         mainAxisAlignment: MainAxisAlignment.start,
    //                   //         children: <Widget>[
    //                   //           Container(
    //                   //             padding: EdgeInsets.symmetric(vertical: 5),
    //                   //             child: Text(
    //                   //               "Mobile App Developer",
    //                   //               textAlign: TextAlign.center,
    //                   //               style: TextStyle(
    //                   //                   color: Colors.white,
    //                   //                   fontSize: 18,
    //                   //                   fontWeight: FontWeight.w600),
    //                   //             ),
    //                   //           ),
    //                   //         ],
    //                   //       )),
    //                   //     ],
    //                   //   ),
    //                   // ),
    //                   // Container(
    //                   //   padding: EdgeInsets.only(bottom: 20),
    //                   //   child: Row(
    //                   //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
    //                   //     crossAxisAlignment: CrossAxisAlignment.center,
    //                   //     children: <Widget>[
    //                   //       Expanded(
    //                   //           flex: 3,
    //                   //           child: Column(
    //                   //             mainAxisAlignment: MainAxisAlignment.center,
    //                   //             children: <Widget>[
    //                   //               Container(
    //                   //                 padding:
    //                   //                     EdgeInsets.symmetric(vertical: 5),
    //                   //                 child: Text(
    //                   //                   "Information System",
    //                   //                   textAlign: TextAlign.center,
    //                   //                   style: TextStyle(
    //                   //                     color: Colors.white,
    //                   //                     fontSize: 15,
    //                   //                   ),
    //                   //                 ),
    //                   //               )
    //                   //             ],
    //                   //           )),
    //                   //       Expanded(
    //                   //         flex: 3,
    //                   //         child: Column(
    //                   //           mainAxisAlignment: MainAxisAlignment.center,
    //                   //           children: <Widget>[
    //                   //             Container(
    //                   //               padding: EdgeInsets.symmetric(vertical: 5),
    //                   //               child: Text(
    //                   //                 "Flutter",
    //                   //                 textAlign: TextAlign.center,
    //                   //                 style: TextStyle(
    //                   //                   color: Colors.white,
    //                   //                   fontSize: 15,
    //                   //                 ),
    //                   //               ),
    //                   //             ),
    //                   //             Container(
    //                   //               padding: EdgeInsets.symmetric(vertical: 5),
    //                   //               child: Text(
    //                   //                 "iOS (Swift)",
    //                   //                 textAlign: TextAlign.center,
    //                   //                 style: TextStyle(
    //                   //                   color: Colors.white,
    //                   //                   fontSize: 15,
    //                   //                 ),
    //                   //               ),
    //                   //             ),
    //                   //           ],
    //                   //         ),
    //                   //       ),
    //                   //     ],
    //                   //   ),
    //                   // )
    //                 ],
    //               ),
    //             ),
    //             Container(
    //               width: double.infinity,
    //               padding:
    //                   EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget>[
    //                   Container(
    //                     padding: EdgeInsets.only(bottom: 10),
    //                     child: Text(
    //                       "ABOUT",
    //                       style: TextStyle(
    //                         fontSize: 18,
    //                         fontWeight: FontWeight.w500,
    //                         color: Colors.grey[600],
    //                       ),
    //                     ),
    //                   ),
    //                   Container(
    //                     // padding: EdgeInsets.only(bottom: 10),
    //                     child: Row(
    //                       children: <Widget>[
    //                         Expanded(
    //                             child: Text(
    //                           "Self-motivated and future-oriented undergraduate student with a demonstrated experience in both Cross-Platform and iOS Application Development and Data Science. Versed in plan making and problem solving under constraint. Adapting quickly to challenges and changing environments. Quick learner with strong interpersonal and communication skills. ",
    //                           style: TextStyle(fontSize: 14),
    //                         )),
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Container(
    //                 padding: EdgeInsets.symmetric(horizontal: 20),
    //                 child: Divider(
    //                   thickness: 2,
    //                 )),
    //             Container(
    //               width: double.infinity,
    //               padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget>[
    //                   Container(
    //                     padding: EdgeInsets.only(bottom: 10),
    //                     child: Text(
    //                       "CONTACT",
    //                       style: TextStyle(
    //                         fontSize: 18,
    //                         fontWeight: FontWeight.w500,
    //                         color: Colors.grey[600],
    //                       ),
    //                     ),
    //                   ),
    //                   Container(
    //                     padding: EdgeInsets.only(bottom: 10),
    //                     child: Row(
    //                       children: <Widget>[
    //                         Icon(Icons.phone),
    //                         SizedBox(width: 10),
    //                         Text(
    //                           "010-9732-8171",
    //                           style: TextStyle(fontSize: 19),
    //                         )
    //                       ],
    //                     ),
    //                   ),
    //                   Row(
    //                     children: <Widget>[
    //                       Icon(Icons.email),
    //                       SizedBox(width: 10),
    //                       Text(
    //                         "punreachmaths@gmail.com",
    //                         style: TextStyle(fontSize: 19),
    //                       )
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             ),
    //             Container(
    //                 padding: EdgeInsets.symmetric(horizontal: 20),
    //                 child: Divider(
    //                   thickness: 2,
    //                 )),
    //             Container(
    //               width: double.infinity,
    //               padding:
    //                   EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget>[
    //                   Container(
    //                     padding: EdgeInsets.only(bottom: 10),
    //                     child: Text(
    //                       "SOCIAL MEDIA",
    //                       style: TextStyle(
    //                         fontSize: 18,
    //                         fontWeight: FontWeight.w500,
    //                         color: Colors.grey[600],
    //                       ),
    //                     ),
    //                   ),
    //                   Container(
    //                     width: double.infinity,
    //                     padding: EdgeInsets.only(bottom: 10),
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.start,
    //                       children: <Widget>[
    //                         Expanded(
    //                           // flex: 1,
    //                           child: Container(
    //                               padding: EdgeInsets.only(right: 12),
    //                               child:
    //                                   Image.asset("assets/images/github.png")),
    //                         ),
    //                         Expanded(
    //                           // flex: 1,
    //                           child: Container(
    //                               padding: EdgeInsets.only(right: 12),
    //                               child: Image.asset(
    //                                   "assets/images/linkedin.png")),
    //                         ),
    //                         Expanded(
    //                           // flex: 1,
    //                           child: Container(
    //                               padding: EdgeInsets.only(right: 12),
    //                               child: Image.asset(
    //                                   "assets/images/facebook.png")),
    //                         ),
    //                         Expanded(
    //                           // flex: 1,
    //                           child: Container(
    //                               padding: EdgeInsets.only(right: 12),
    //                               child:
    //                                   Image.asset("assets/images/google.png")),
    //                         ),
    //                         Expanded(
    //                           // flex: 1,
    //                           child: Container(
    //                               padding: EdgeInsets.only(right: 12),
    //                               child:
    //                                   Image.asset("assets/images/kakao.png")),
    //                         ),
    //                         // Container(
    //                         //   padding: EdgeInsets.only(right: 10),
    //                         //   child: Image.asset(
    //                         //     "assets/images/github.png",
    //                         //     width: 50,
    //                         //     height: 50,
    //                         //   ),
    //                         // ),
    //                         // Container(
    //                         //   padding: EdgeInsets.only(right: 10),
    //                         //   child: Image.asset(
    //                         //     "assets/images/linkedin.png",
    //                         //     width: 50,
    //                         //     height: 50,
    //                         //   ),
    //                         // ),
    //                         // Container(
    //                         //   padding: EdgeInsets.only(right: 10),
    //                         //   child: Image.asset(
    //                         //     "assets/images/facebook.png",
    //                         //     width: 50,
    //                         //     height: 50,
    //                         //   ),
    //                         // ),
    //                         // Container(
    //                         //   padding: EdgeInsets.only(right: 10),
    //                         //   child: Image.asset(
    //                         //     "assets/images/kakao.png",
    //                         //     width: 50,
    //                         //     height: 50,
    //                         //   ),
    //                         // ),
    //                         // Container(
    //                         //   padding: EdgeInsets.only(right: 10),
    //                         //   child: Image.asset(
    //                         //     "assets/images/google.png",
    //                         //     width: 50,
    //                         //     height: 50,
    //                         //   ),
    //                         // ),
    //                         // Expanded(
    //                         //   flex: 2,
    //                         //   child: Container(),
    //                         // ),
    //                         // Expanded(
    //                         //     flex: 1,
    //                         //     child: Container(
    //                         //         padding: EdgeInsets.only(right: 10),
    //                         //         child: Image.asset(
    //                         //             "assets/images/facebook.png"))),
    //                         // // SizedBox(width: 10),
    //                         // Expanded(
    //                         //     flex: 1,
    //                         //     child: Container(
    //                         //         padding: EdgeInsets.only(right: 10),
    //                         //         child: Image.asset(
    //                         //             "assets/images/kakao.png"))),
    //                         // Expanded(
    //                         //     flex: 1,
    //                         //     child: Container(
    //                         //         padding: EdgeInsets.only(right: 10),
    //                         //         child: Image.asset(
    //                         //             "assets/images/google.png"))),
    //                         // // Expanded(
    //                         // //   flex: 2,
    //                         // //   child: Container(),
    //                         // // )
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         )),
    //   ),
    // );
  }
}
