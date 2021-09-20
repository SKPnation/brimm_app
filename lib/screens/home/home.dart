import 'package:brimm_app/screens/home/components/post_item.dart';
import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'components/topic_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> menuOptions = ['Sign Out'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color(0xff0F0F0F),
            title: Text(
              'Feed',
            ),
            centerTitle: false,
            actions: [
              InkWell(
                onTap: () {
                  Get.toNamed('/allChats');
                },
                child: SvgPicture.asset(
                  'assets/icons/icon-chatbubbles.svg',
                  color: Colors.white,
                  fit: BoxFit.none,
                  height: 30,
                )
              ),
              SizedBox(width: 25.0)
            ],
          ),
          body:  SafeArea(
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                        padding: EdgeInsets.only(top: 25),
                        decoration: BoxDecoration(
                            color: Color(0xff2F2F2F),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[700],
                                blurRadius: 10,
                                spreadRadius: 0,
                                offset: Offset(2, 4),
                              ),
                            ]
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: displayWidth(context)*0.04),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: BuildTopicCard(),
                                )
                              ],
                            ),
                            Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            hint: Text(
                                              'Recent Posts',
                                              style: TextStyle(color: Color(0xffC9C9C9)),
                                            ),
                                            iconEnabledColor: Color(0xffC9C9C9),
                                          )
                                      )
                                  )
                                ]
                            )
                          ],
                        )
                    )
                ),
                Expanded(
                    flex: 10,
                    child: BuildPostCard()
                ),
                SizedBox(height: 15),
                Expanded(
                  flex: 1,
                    child: Container(
                      color: Colors.transparent,
                    ),
                )
              ],
            ),
          )
      ),
    );
  }

  void optionAction(String option){
    //..
  }

}
