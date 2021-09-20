import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/onboarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  int currentPage = 0;
  List<Map<String, String>> onBoardingData = [
    {
      "text": 'Join thousands of \nverified working professionals',
      "image": "assets/images/group_chat_amico.png"
    },
    {
      "text": 'Join thusands of \nverified working professionals',
      "image": "assets/images/group_chat_amico.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: displayWidth(context),
                margin: EdgeInsets.only(left: displayWidth(context)*0.1),
                height: displayHeight(context)*0.6,
                color: Color(0xff3E9853).withOpacity(0.43),
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                        child: PageView.builder(
                          onPageChanged: (value){
                            setState(() {
                              currentPage = value;
                            });
                          },
                          itemCount: onBoardingData.length,
                          itemBuilder: (context, index) =>
                              OnBoardingContent(
                                image: onBoardingData[index]["image"],
                                text: onBoardingData[index]['text'],
                              ),
                        )
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: displayWidth(context)*0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            onBoardingData.length,
                                (index) => buildDot(index: index),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: displayWidth(context),
                margin: EdgeInsets.only(
                    left: displayWidth(context)*0.1,
                    right: displayWidth(context)*0.06,
                    top: displayWidth(context)*0.08
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Connect with \nprofessionals in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    )),
                    Row(
                      children: [
                        DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text(
                                'Nigeria',
                                style: TextStyle(color: kPrimaryColor),
                              ),
                              iconEnabledColor: kPrimaryColor,
                            )
                        )
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/signUpSignIn');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: buttonColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Container(
                      width: displayWidth(context)*0.8,
                      height: displayHeight(context)*0.06,
                      alignment: Alignment.center,
                      child: Text(
                        "Let's Go",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: displayHeight(context) * 0.02)
            ],
          ),
        )
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
