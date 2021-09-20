import 'package:brimm_app/screens/explore/company_overview.dart';
import 'package:brimm_app/screens/explore/write_review.dart';
import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyReviewScreen extends StatefulWidget {
  @override
  _CompanyReviewScreenState createState() => _CompanyReviewScreenState();
}

class _CompanyReviewScreenState extends State<CompanyReviewScreen> {

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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('companyName Reviews'),
          centerTitle: false,
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
                                                child: Text('Company Overview',
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
                                                child: Text('Write a Review',
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

  void checkAuthState() {
    tabs = [
      CompanyOverview(),
      WriteReviewScreen()
    ];
  }

  void setBottomBarIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
