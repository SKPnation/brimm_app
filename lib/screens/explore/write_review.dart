import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WriteReviewScreen extends StatefulWidget {
  @override
  _WriteReviewScreenState createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 180,
                  color: Color(0xff2f2f2f),
                  padding: EdgeInsets.only(top: 60, left: 16.0, right: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.only(
                            right: 16.0,
                            left: 8.0,
                            top: 4.0,
                            bottom: 4.0
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4.0)
                        ),
                        child: Center(
                          child: Image.asset('assets/images/google_logo.png'),
                        ),
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Company Name',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0
                              )
                          ),
                          SizedBox(height: 8.0),
                          Container(
                            //TODO: remove width
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff707070),
                                    width: 1.0,
                                    style: BorderStyle.solid
                                )
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: Text('companyName',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0
                                )
                            ),
                          ),
                        ],
                      )
                    ],

                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  color: Color(0xff2f2f2f),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Rate this company',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Colors.white
                              ),),
                              SizedBox(height: 16.0),
                              Text('Overall Rating',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white
                                ),),
                            ],
                          ),
                          SizedBox(width: 8.0),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 32,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 32,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 32,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 32,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 32,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      //divider line
                      Container(
                        width: displayWidth(context),
                        height: 1,
                        color: Color(0xff707070),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Career Growth',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ],
                          ),

                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Work - Life Balance',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0
                            ),),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Compensation / Benefits',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0
                            ),),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Company Culture',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0
                            ),),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Management',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0
                            ),),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  width: displayWidth(context),
                  color: Color(0xff2f2f2f),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Write your review',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white
                        ),),
                      SizedBox(height: 24.0),
                      Text('Review Summary',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white
                        ),),
                      SizedBox(height: 8.0),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        width: displayWidth(context),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff707070),
                            width: 1.0,
                            style: BorderStyle.solid
                          )
                        ),
                        child: Text('E.g, ',
                        style: TextStyle(
                          color: kPrimaryGrey
                        ),),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
