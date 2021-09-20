import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyRatings extends StatelessWidget {

  final int _overallReviews = 1180;
  final double _careerGrowth = 3.8;
  final double _workLifeBalance = 4.6;
  final double _benefits = 4.2;
  final double _culture = 4.4;
  final double _management = 3.8;

  final double _overallRating = 5.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Container(
        width: displayWidth(context),
        color: Colors.transparent,
        padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Company Overview',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Text('$_overallRating',
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
                SizedBox(width: 8.0),
                Text('$_overallReviews reviews',
                  style: TextStyle(
                      color: kPrimaryGrey,
                      fontSize: 16
                  ),)
              ],
            ),

            SizedBox(height: 24.0),

            //divider line
            Container(
              width: displayWidth(context),
              height: 1,
              color: Color(0xff707070),
            ),

            SizedBox(height: 24.0),

            Text('Ratings by category',
              style: TextStyle(
                  color: kPrimaryGrey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 24.0),

            Row(
              children: [
                Text('$_careerGrowth',
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
                    )
                  ],
                ),
                SizedBox(width: 8.0),
                Text('Career Growth',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text('$_workLifeBalance',
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
                    )
                  ],
                ),
                SizedBox(width: 8.0),
                Text('Work - Life Balance',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text('$_benefits',
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
                    )
                  ],
                ),
                SizedBox(width: 8.0),
                Text('Compensation / Benefits',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text('$_culture',
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
                    )
                  ],
                ),
                SizedBox(width: 8.0),
                Text('Company Culture',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text('$_management',
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
                    )
                  ],
                ),
                SizedBox(width: 8.0),
                Text('Management',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
