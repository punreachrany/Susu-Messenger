import 'dart:ui';

import 'package:Susu_Messenger/screens/chat/chat_wrapper.dart';
import 'package:Susu_Messenger/screens/home/home_wrapper.dart';
import 'package:Susu_Messenger/screens/setting/setting_wrapper.dart';
import 'package:Susu_Messenger/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class NavigationWrapper extends StatefulWidget {
  @override
  _NavigationWrapperState createState() => _NavigationWrapperState();
}

class _NavigationWrapperState extends State<NavigationWrapper> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  int currentTab = 0;
  // initial screen in viewport
  Widget currentScreen = HomeWrapper();
  //Widget currentScreen = UploadSuccessful();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    print("In Navigation Wrapper");

    //

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Home
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = HomeWrapper();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color:
                          currentTab == 0 ? bottomNavigatorColor : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: currentTab == 0
                            ? bottomNavigatorColor
                            : Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                minWidth: width / 4,
              ),

              // Chat
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = ChatWrapper();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // SvgPicture.asset(
                    //   'assets/images/dashboard.svg',
                    //   color: currentTab == 2 ? bottomNavigatorColor : null,
                    // ),
                    Icon(
                      // Icons.show_chart,
                      // Icons.dashboard,
                      //Icons.crop_square,
                      Icons.chat,
                      color:
                          currentTab == 1 ? bottomNavigatorColor : Colors.grey,
                    ),
                    Text(
                      "Chat",
                      style: TextStyle(
                        color: currentTab == 1
                            ? bottomNavigatorColor
                            : Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                minWidth: width / 4,
              ),

              // Setting
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = SettingWrapper();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      color:
                          currentTab == 2 ? bottomNavigatorColor : Colors.grey,
                    ),
                    Text(
                      "Setting",
                      style: TextStyle(
                        color: currentTab == 2
                            ? bottomNavigatorColor
                            : Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                minWidth: width / 4,
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
