import 'package:brimm_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildTopicCard extends StatefulWidget {
  @override
  _BuildTopicCardState createState() => _BuildTopicCardState();
}

class _BuildTopicCardState extends State<BuildTopicCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: industryList.length,
            itemBuilder:
                (BuildContext context, int index) =>
                buildTopicCard(context, index))
    );
  }

  //topic item card method
  buildTopicCard(BuildContext context, int index) {
    final industry = industryList[index];
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(10.0),
      height: 20,
      width: 120,
      decoration: BoxDecoration(
        color: Color(0xff15694F),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Center(
        child: Text(industry,
          style: TextStyle(
              color: Colors.white
          ),),
      ),
    );
  }
}
