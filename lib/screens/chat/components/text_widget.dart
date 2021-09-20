import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'enums.dart';

class TextWidgetInChat extends StatelessWidget {
  final ChatFrom chatFrom;
  final String message;
  final DateTime date;
  final DateTime now = DateTime.now();
  final df = DateFormat('dd-MM-yyyy   hh:mm a');

  TextWidgetInChat({
    Key key,
    this.chatFrom = ChatFrom.self,
    @required this.message,
    this.date})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: displayWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('company name',
                style: TextStyle(
                color: Colors.grey
              ),),
              Padding(padding: EdgeInsets.only(left: 4, bottom: 4, right: 4),
              child: Text('.',
                style: TextStyle(
                  color: Colors.white
                ),)),
              Text('username',
                  style: TextStyle(
                  color: Colors.grey
              ),),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          SizedBox(
            width: displayWidth(context) * 0.65,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Text(
                  'message',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Text(
              getDate(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          )
        ],
      ),
    );
  }

  String getDate() {
    if (date == null) {
      return df.format(now);
    } else {
      return df.format(date);
    }
  }
}
