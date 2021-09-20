import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class ReviewItem extends StatelessWidget {

  final double _rating = 4.8;

  double _overallRating = 5.0;

  String _username = 'u*******';

  DateTime date;
  DateTime now = DateTime.now();
  final df = DateFormat('dd-MM-yyyy');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.43,
      color: Color(0xff2f2f2f),
      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('$_rating',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(width: 8.0),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  )
                ],
              ),
            ],
          ),

          SizedBox(height: 8.0),

          Text('"Good career growth with bad web and '
              'bad salary"',
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),),

          SizedBox(height: 8.0),

          Row(
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/icons/icon-splotch.svg',
                    fit: BoxFit.none,
                    color: kPrimaryColor,
                  ),
                  Positioned(
                      top: 2.0,
                      left: 2.0,
                      child: Icon(
                        Icons.check,
                        size: 12.0,
                      )
                  )
                ],
              ),
              SizedBox(width: 8.0),
              Text('Current Employee',
                style: TextStyle(
                    fontSize: 14.0,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(width: 8.0),
              Text('$_username - ${getDate()}' ,
                style: TextStyle(
                  fontSize: 14.0,
                  color: kPrimaryGrey,
                ),),
            ],
          ),

          SizedBox(height: 8.0),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pros',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good team members',
                        style: TextStyle(color: Colors.white)),
                    Text('Good technology',
                        style: TextStyle(color: Colors.white)),
                    Text('Good career opportunity',
                        style: TextStyle(color: Colors.white)),
                    Text('Good perks',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),

              SizedBox(height: 8.0),

              Text('Cons',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, '
                        'sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, '
                        'sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, '
                        'no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: 24.0),

          //divider line
          Container(
            width: displayWidth(context),
            height: 1,
            color: Color(0xff707070),
          ),
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
