import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/custom_text_field.dart';

class CreateGroupScreen extends StatefulWidget {
  @override
  _CreateGroupScreenState createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff68D682), Color(0xff808080)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color(0xff68D682),
          actions: [
            InkWell(
              onTap: (){
                Get.back();
              },
              child: Padding(
                  padding: EdgeInsets.only(right: 20, top: 16),
                  child: Text('Next',
                      style: TextStyle(
                          color: Color(0xff484848),
                          fontSize: 16
                      ))
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 52, left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('New Group Chat',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white
                ),),
                SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Group name field
                    Text('Group Name',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white
                      ),),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white)
                      ),
                      child: CustomTextField(
                        hint: 'Enter group chat name',
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('0/30',
                      style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                    SizedBox(height: 50),
                    //Group description field
                    Text('About Group',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white
                      ),),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)
                      ),
                      child: CustomTextField(
                        hint: 'Enter group description',
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('0/60',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}