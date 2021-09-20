import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  // controls the text label we use as a search bar
  final TextEditingController _filter = new TextEditingController();
  String _searchText = "";
  List names = new List();
  List filteredNames = new List(); // names filtered by search text
  Icon _searchIcon = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Explore'),
          backgroundColor: Colors.black,
          centerTitle: false,
          actions: [
            IconButton(
                icon: _searchIcon,
                onPressed: (){
                  //on search clicked
                }),
            SizedBox(width: 25.0)
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 10,
                  child: ListView.builder(
                    itemCount: industryList.length,
                      itemBuilder: (BuildContext context, int index) =>
                          buildCompanyCard(context, index)
                  )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              )
            ],
          ),
        )
      ),
    );
  }

  buildCompanyCard(BuildContext context, int index) {
    return InkWell(
      onTap: (){
        Get.toNamed('/companyReview');
      },
      child: Container(
        height: 70,
        margin: EdgeInsets.only(top:30, left: 15, right: 15, bottom: 12),
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
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(
                  right: 8.0,
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
            Container(
              margin: EdgeInsets.only(
                  right: 8.0,
                  left: 8.0,
                  top: 4.0,
                  bottom: 4.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Company name',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 22.0,
                      ),
                      SizedBox(width: 5),
                      Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text('4.5',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
