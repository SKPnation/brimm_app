import 'package:brimm_app/screens/chat/create_group_chat.dart';
import 'package:brimm_app/screens/chat/my_chats_screen.dart';
import 'package:brimm_app/screens/chat/public_chats_screen.dart';
import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  var _numOfOnlineUsers = '10 100';

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
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('All Chats',
                style: TextStyle(
                  color: Colors.white,
                ),),
              // SizedBox(height: 10),
              // Row(
              //   children: [
              //     Text('$_umOfOnlineUsers',
              //       style: TextStyle(
              //           fontSize: 14,
              //           color: kPrimaryColor
              //       ),),
              //     Text(' users online',
              //       style: TextStyle(
              //           fontSize: 14,
              //           color: Colors.white
              //       ),),
              //   ],
              // ),
              // SizedBox(height: 5),
            ],
          ),
          centerTitle: false,
          backgroundColor: Colors.black,
          actions: [
            InkWell(
              onTap: (){
                print('open create group chat modal sheet');
                Get.bottomSheet(
                  Container(
                    padding: EdgeInsets.only(left: 54, top: 8.0, bottom: 16.0),
                    child: ListTile(
                      leading: Icon(Icons.group_add, color: Colors.white),
                      title: Text('Create New Group Chat',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      onTap: () => {
                        Navigator.of(context).pop(),
                        showCreateGroupDialog()
                      },
                    ),
                  ),
                  barrierColor: Colors.black54,
                  backgroundColor: Colors.black54,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),

                );
              },
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.group_add,
                  size: 28,
                ),
              ),
            )
          ],
        ),
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
                      top: -20,
                      left: 0,
                      right: 0,
                      child: Container(
                          color: Color(0xff1F1F1F),
                          height: 80,
                          width: displayWidth(context),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 120,
                                child: Container(),
                              ),
                              Container(
                                width: displayWidth(context),
                                height: 120,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    //my chats
                                    Column(
                                      children: [
                                        SizedBox(height: 25),
                                        InkWell(
                                          onTap: (){
                                            setBottomBarIndex(0);
                                          },
                                          child: Container(
                                              width: 200,
                                              height: 52,
                                              child: Center(
                                                child: Text('My Chats',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),),
                                              )
                                          ),
                                        ),
                                        Visibility(
                                            visible: currentIndex == 0 ? true : false,
                                            child: Container(
                                              color: kPrimaryColor,
                                              height: 3,
                                              width: 200,
                                            )
                                        )
                                      ],
                                    ),
                                    //public chats
                                    Column(
                                      children: [
                                        SizedBox(height: 25),
                                        InkWell(
                                          onTap: (){
                                            setBottomBarIndex(1);
                                          },
                                          child: Container(
                                              width: 200,
                                              height: 52,
                                              child: Center(
                                                child: Text('Public Chats',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),),
                                              )
                                          ),
                                        ),
                                        Visibility(
                                            visible: currentIndex == 1 ? true : false,
                                            child: Container(
                                              color: kPrimaryColor,
                                              height: 3,
                                              width: 200,
                                            )
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                      )
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }


  void setBottomBarIndex(int index) {
    print('Changing Index $index');
    setState(() {
      currentIndex = index;
    });
  }

  void checkAuthState() {
    tabs = [
      MyChatsScreen(),
      PublicChatScreen()
    ];

    //used a varibale for page loaded or not...
    //when this variabled is false, center loading screen is visible and when true
    //tabs are loaded
    setState(() {
      pageLoaded = true;
    });
  }

  showCreateGroupDialog() {
    Get.to(
      CreateGroupScreen(),
      //to make screen full dialog
      fullscreenDialog: true,
      //to provide animation
      transition: Transition.zoom,
      //duration for transition animation
      //duration: Duration(milliseconds: 2000),
      //Curve Animation
      curve: Curves.bounceInOut,
    );
  }


}