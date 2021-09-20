import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingContent extends StatelessWidget {
  final String text, image;

  const OnBoardingContent({Key key, this.text, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Spacer(),
        Container(
          margin: EdgeInsets.only(left:displayWidth(context)*0.1),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),
          ),
        ),
        Image.asset(
          image,
          height: displayHeight(context)*0.4,
          width: displayWidth(context)*1,
        ),
      ],
    );
  }
}
