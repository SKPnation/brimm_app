import 'package:brimm_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicsScreen extends StatefulWidget {
  @override
  _TopicsScreenState createState() => _TopicsScreenState();
}

class _TopicsScreenState extends State<TopicsScreen> {

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
          title: Text('Topics'),
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
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                    itemCount: industryList.length,
                    itemBuilder: (context, int index){
                      final topic = industryList[index];
                      return InkWell(
                        onTap: (){
                          print('$topic clicked');
                          Get.toNamed('/sharePost');
                        },
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.all(24.0),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(topic,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0
                              ),),
                              Icon(Icons.keyboard_arrow_right,
                              color: Colors.white)
                            ],
                          )
                        ),
                      );
                    }
                ),
              )
            ],
          )
        )
      ),
    );
  }
}
