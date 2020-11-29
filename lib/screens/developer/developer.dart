import 'package:flutter/material.dart';

class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    // Text(
                    //   "Developer",
                    //   style:
                    //       TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    // ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.lightBlue[100]),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.logout,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Log out",
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
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 15),
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
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
                              fontSize: 30,
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
                                  padding: EdgeInsets.symmetric(horizontal: 10),
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
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
              child: Text(
                "Skills",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
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
                                fontSize: 16, fontWeight: FontWeight.w500),
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
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
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
                                fontSize: 16, fontWeight: FontWeight.w500),
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
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
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
                                fontSize: 16, fontWeight: FontWeight.w500),
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
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
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
                                fontSize: 16, fontWeight: FontWeight.w500),
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
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
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
                                fontSize: 16, fontWeight: FontWeight.w500),
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
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
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
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
