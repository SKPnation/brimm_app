import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Activity'),
          backgroundColor: Colors.black,
          centerTitle: false,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: ListView.builder(
                  itemCount: industryList.length,
                    itemBuilder: (context, int index) =>
                    buildActivityCard(context, index)
                ),
              ),
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

  buildActivityCard(BuildContext context, int index) {
    return InkWell(
        onTap: (){
          //..
        },
        child: Container(
          height: 70,
          margin: EdgeInsets.only(top:30, left: 15, right: 15, bottom: 12),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Color(0xff484848),
              borderRadius: BorderRadius.circular(4.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff68D682),
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: Offset(2, 4),
                ),
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: displayWidth(context),
                child: Row(
                  children: [
                    Text('username',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        )),
                    Text(' commented on your post',
                        style: TextStyle(
                            color: Colors.white
                        )),
                  ],
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('5 mins ago',
                      style: TextStyle(
                          color: kPrimaryGrey
                      ))
                ],
              )
            ],
          )
        )
    );
  }
}
