import 'package:brimm_app/screens/activity/activity.dart';
import 'package:brimm_app/screens/explore/explore_screen.dart';
import 'package:brimm_app/screens/home/home.dart';
import 'package:brimm_app/screens/profile/Profile.dart';
import 'package:brimm_app/screens/sharePost/topic_list_screen.dart';
import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/bottom_nav_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int currentIndex = 0;
  bool pageLoaded = false;
  List<Widget> tabs;


  @override
  void initState() {
    super.initState();

    checkAuthState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SizedBox(
              height: displayHeight(context),
              width: displayWidth(context),
              child: tabs[currentIndex],
            ),
            Stack(
              children: [
                Positioned(
                    bottom: -20,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: displayWidth(context),
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 120,
                              child: CustomPaint(
                                size: Size(displayWidth(context), 80),
                                painter: BNBCustomPainter(),
                              ),
                            ),
                            Center(
                              heightFactor: 1.0,
                              child: FloatingActionButton(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.edit, color: Colors.black),
                                  elevation: 0.1,
                                  onPressed: () {
                                    Get.toNamed('/topics');
                                  }),
                            ),
                            Container(
                              width: displayWidth(context),
                              height: 120,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(width: displayWidth(context) * 0.1),
                                  //home
                                  IconButton(
                                    icon: Icon(
                                      Icons.home,
                                      color: currentIndex == 0
                                          ? kPrimaryColor
                                          : Colors.grey.shade400,
                                    ),
                                    onPressed: () {
                                      setBottomBarIndex(0);
                                    },
                                    splashColor: Colors.white,
                                  ),
                                  //wallet
                                  IconButton(
                                      icon: Icon(
                                        Icons.search,
                                        color: currentIndex == 1
                                            ? kPrimaryColor
                                            : Colors.grey.shade400,
                                      ),
                                      onPressed: () {
                                        setBottomBarIndex(1);
                                      }),
                                  SizedBox(width: displayWidth(context) * 0.05),
                                  //journal
                                  IconButton(
                                      icon: Icon(
                                        Icons.notifications,
                                        color: currentIndex == 2
                                            ? kPrimaryColor
                                            : Colors.grey.shade400,
                                      ),
                                      onPressed: () {
                                        setBottomBarIndex(2);
                                      }),
                                  //Profile
                                  IconButton(
                                      icon: Icon(
                                        Icons.person,
                                        color: currentIndex == 3
                                            ? Colors.green
                                            : Colors.grey.shade400,
                                      ),
                                      onPressed: () {
                                        setBottomBarIndex(3);
                                      }),
                                  SizedBox(width: displayWidth(context) * 0.1),
                                ],
                              ),
                            )
                          ],
                        )
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void setBottomBarIndex(int index) {
    print('Changing Index');
    setState(() {
      currentIndex = index;
    });
  }

  checkAuthState(){
    tabs = [
      Home(),
      ExploreScreen(),
      ActivityScreen(),
      ProfileScreen()
    ];

    //used a varibale for page loaded or not...
    //when this variabled is false, center loading screen is visible and when true
    //tabs are loaded
    setState(() {
      pageLoaded = true;
    });
  }
}
