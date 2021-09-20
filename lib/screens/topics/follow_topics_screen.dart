import 'package:brimm_app/screens/topics/components/select_industry.dart';
import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowTopicsScreen extends StatefulWidget {
  @override
  _FollowTopicsScreenState createState() => _FollowTopicsScreenState();
}

class _FollowTopicsScreenState extends State<FollowTopicsScreen> {

  final List<Map> myProducts =
  List.generate(100000, (index) => {"id": index, "name": "Product $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Follow Topic'),
        ),
        body: SafeArea(
          child: Container(
            //height: displayHeight(context),
            padding: EdgeInsets.fromLTRB(
              displayHeight(context)*0.04,
              displayHeight(context)*0.04,
              displayHeight(context)*0.04,
              displayHeight(context)*0.02,
            ),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Text(
                    'Now pick an topic \nyou want to follow',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SelectIndustry(),
                SizedBox(height: 20),
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
                          "Sign Up",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
