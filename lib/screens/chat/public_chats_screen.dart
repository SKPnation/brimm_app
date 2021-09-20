import 'package:brimm_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PublicChatScreen extends StatefulWidget {
  @override
  _PublicChatScreenState createState() => _PublicChatScreenState();
}

class _PublicChatScreenState extends State<PublicChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(16.0, 56.0, 16.0, 8.0),
            child: ListView.builder (
                itemCount: industryList.length,
                itemBuilder: (context, int index)=>
                    buildGroupChatItem(context, index)
            ),
          )
        )
      ),
    );
  }

  buildGroupChatItem(BuildContext context, int index) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(top:20, left: 15, right: 15, bottom: 12),
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Group chat name',
              style: TextStyle(
                color: Colors.white
              ),),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.circular(12.5)
                ),
                child: Center(
                  child: Text('8',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white
                  ),),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    gradient: bgColor,
                    borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: kPrimaryColor, width: 1.5, style: BorderStyle.solid)
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      'B',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Academy Engraved LET'
                      ),
                    ),
                  )
                ),
              ),
              SizedBox(width: 10),
              Container(
                child: Text('Latest message',
                style: TextStyle(
                  color: kPrimaryGrey
                ),),
              )
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Text('4/100',
            style: TextStyle(
              color: kPrimaryGrey
            ),),
          )
        ],
      ),
    );
  }
}