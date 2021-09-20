import 'package:brimm_app/screens/explore/components/review_item.dart';
import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'components/company_ratings.dart';

class CompanyOverview extends StatefulWidget {
  @override
  _CompanyOverviewState createState() => _CompanyOverviewState();
}

class _CompanyOverviewState extends State<CompanyOverview> {

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
                SizedBox(
                  height: 200,
                  child: Container(
                    color: Color(0xff2f2f2f),
                    padding: EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Container(
                          height: 32,
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: Icon(
                                Icons.info,
                                color: Colors.white
                            ),
                          ),
                        ),
                        Text('Would you work at companyName ?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Color(0xff00C3B4),
                                      width: 2,
                                      style: BorderStyle.solid
                                  )
                              ),
                              child: IconButton(
                                icon: Icon(
                                    Icons.thumb_up,
                                    color: Color(0xff00C3B4)
                                ),
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 2,
                                      style: BorderStyle.solid
                                  )
                              ),
                              child: IconButton(
                                icon: Icon(
                                    Icons.thumb_down,
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                CompanyRatings(),
                SizedBox(height: 8.0),
                Container(
                  height: displayHeight(context)*0.6,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: industryList.length,
                    itemBuilder: (context, int index) =>
                        ReviewItem(),
                  ),
                )
              ],
            ),
          )
        )
      ),
    );
  }

}
