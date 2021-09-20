import 'package:brimm_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Comments'),
          centerTitle: false,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
                child: Container(
                    height: 160,
                    margin: EdgeInsets.only(top:10, left: 15, right: 15, bottom: 12),
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
                    child: buildPostContent() //the content of the post method
                ),
            ),
            Expanded(
              flex: 6,
                child: Container(
                  padding: EdgeInsets.only(top:16.0, left: 8.0, right: 8.0),
                  child:  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: industryList.length,
                      itemBuilder:
                          (BuildContext context, int index) =>
                          buildCommentCard(context, index)),
                )
            )
          ],
        ),
      ),
    );
  }



  //post content method
  buildPostContent(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('5 mins ago',
                style: TextStyle(
                    color: kPrimaryGrey,
                    fontSize: 12.0
                )
            ),
            Text('industry type',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 12.0
                )
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Company name',
                style: TextStyle(
                    color: kPrimaryGrey,
                    fontSize: 14.0
                )
            ),
            Padding(
                padding: EdgeInsets.only(left: 5, bottom: 5, right: 5),
                child: Text('.',
                    style: TextStyle(
                        color: kPrimaryGrey,
                        fontSize: 14.0
                    )
                )
            ),
            Text('username',
                style: TextStyle(
                    color: kPrimaryGrey,
                    fontSize: 14.0
                )
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 360,
              child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                  )
              ),
            )
          ],
        ),
        SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:3, left: 5),
                  child: Text('136',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.thumb_up,
                  color: kPrimaryGrey,
                  size: 18,
                ),
                SizedBox(width: 15),
                Padding(
                  padding: EdgeInsets.only(top:3, left: 5),
                  child: Text('82',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                    ),
                  ),
                ),
                SizedBox(width: 5),
                SvgPicture.asset(
                  'assets/icons/icon-comment.svg',
                  color: kPrimaryGrey,
                  fit: BoxFit.none,
                  height: 20,
                  width: 20,
                )
              ],
            ),
            InkWell(
              onTap: (){},
              child: Icon(
                  Icons.more_vert,
                  color: kPrimaryGrey
              ),
            )
          ],
        )
      ],
    );
  }

  //comment card method
  buildCommentCard(BuildContext context, int index) {
    return Container(
        height: 170,
        margin: EdgeInsets.only(top:10, left: 15, right: 15, bottom: 12),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.grey[900],
            border: Border.all(color: kPrimaryColor, width: 1.0, style: BorderStyle.solid),
        ),
        child: buildCommentContent() //the content of the post method
    );
  }

  //comment content method
  buildCommentContent(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('5 mins ago',
                style: TextStyle(
                    color: kPrimaryGrey,
                    fontSize: 12.0
                )
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Company name',
                style: TextStyle(
                    color: kPrimaryGrey,
                    fontSize: 14.0
                )
            ),
            Padding(
                padding: EdgeInsets.only(left: 5, bottom: 5, right: 5),
                child: Text('.',
                    style: TextStyle(
                        color: kPrimaryGrey,
                        fontSize: 14.0
                    )
                )
            ),
            Text('username',
                style: TextStyle(
                    color: kPrimaryGrey,
                    fontSize: 14.0
                )
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 360,
              child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                  )
              ),
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:3, left: 5),
                  child: Text('136',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.thumb_up,
                  color: kPrimaryGrey,
                  size: 18,
                ),
                SizedBox(width: 15),
                Padding(
                  padding: EdgeInsets.only(top:3, left: 5),
                  child: Text('82',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                    ),
                  ),
                ),
                SizedBox(width: 5),
                SvgPicture.asset(
                  'assets/icons/icon-comment.svg',
                  color: kPrimaryGrey,
                  fit: BoxFit.none,
                  height: 20,
                  width: 20,
                )
              ],
            ),
            InkWell(
              onTap: (){},
              child: Icon(
                  Icons.more_vert,
                  color: kPrimaryGrey
              ),
            )
          ],
        )
      ],
    );
  }

}
