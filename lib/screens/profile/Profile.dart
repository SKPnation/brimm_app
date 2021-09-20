import 'package:brimm_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  var _numOfPosts = 79;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('username',
              style: TextStyle(
                color: Colors.white,
              ),),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('$_numOfPosts ',
                    style: TextStyle(
                        fontSize: 14,
                        color: kPrimaryColor
                    ),),
                  Text('posts',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white
                    ),),
                ],
              ),
              SizedBox(height: 5),
            ],
          ),
          centerTitle: false,
          backgroundColor: Colors.black,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text('Edit',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16
                ))
            )
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              InkWell(
                onTap: (){
                  ///Navigate to jobs required screen
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 30, left: 35, right: 35, bottom: 12),
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    decoration: BoxDecoration(
                      color: Color(0xff484848),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Careers - We’re Hiring',
                            style: TextStyle(
                                color: Colors.white
                            )),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        )
                      ],
                    )
                )
              ),
              InkWell(
                onTap: (){
                  ///Navigate to company reviews
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 30, left: 35, right: 35, bottom: 0),
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    decoration: BoxDecoration(
                      color: Color(0xff484848),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Company Reviews',
                            style: TextStyle(
                                color: Colors.white
                            )),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        )
                      ],
                    )
                ),
              ),
              InkWell(
                onTap: (){
                  ///navigate to salary comparison screen
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10, left: 35, right: 35, bottom: 12),
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    decoration: BoxDecoration(
                      color: Color(0xff484848),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Salary Comparison',
                            style: TextStyle(
                                color: Colors.white
                            )),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        )
                      ],
                    )
                ),
              ),
              InkWell(
                onTap: (){
                  ///navigate to topic customisation screen
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 30, left: 35, right: 35, bottom: 0),
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    decoration: BoxDecoration(
                      color: Color(0xff484848),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Customise Topics',
                            style: TextStyle(
                                color: Colors.white
                            )),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        )
                      ],
                    )
                ),
              ),
              InkWell(
                onTap: (){
                  ///Navigate to your posts screen
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10, left: 35, right: 35, bottom: 0),
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    decoration: BoxDecoration(
                      color: Color(0xff484848),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('View Posts',
                            style: TextStyle(
                                color: Colors.white
                            )),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        )
                      ],
                    )
                ),
              ),
              InkWell(
                onTap: (){
                  ///Navigate to bookmarks screen
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10, left: 35, right: 35, bottom: 12),
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    decoration: BoxDecoration(
                      color: Color(0xff484848),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Bookmarks',
                            style: TextStyle(
                                color: Colors.white
                            )),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        )
                      ],
                    )
                ),
              ),
              InkWell(
                onTap: (){
                  ///Invite friends
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 30, left: 35, right: 35, bottom: 0),
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    decoration: BoxDecoration(
                      color: Color(0xff484848),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Invite Friends',
                            style: TextStyle(
                                color: Colors.white
                            )),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        )
                      ],
                    )
                ),
              ),
              InkWell(
                onTap: (){
                  ///navigate to Settings Screen
                },
                child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10, left: 35, right: 35, bottom: 12),
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    decoration: BoxDecoration(
                      color: Color(0xff484848),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Settings',
                            style: TextStyle(
                                color: Colors.white
                            )),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

