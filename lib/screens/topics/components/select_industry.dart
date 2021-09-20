import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectIndustry extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: new GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            scrollDirection: Axis.vertical,
            itemCount: industryList.length,
            itemBuilder: (BuildContext context, int index) =>
                buildItemCard(context, index)),
      )
    );
  }

  buildItemCard(BuildContext context, int index) {
    final industry = industryList[index];
    return Container(
      margin: EdgeInsets.only(top:10),
      child: Stack(
        children: [
          Positioned(
            top: 6,
            right: 6,
            child: InkWell(
              onTap: () {
                print('clicked industry $index');
              },
              child: SizedBox(
                width: 140,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left:45.0, bottom: 15, right:1),
                  height: 60,
                  color: Color(0xff8E8E8E),
                  child: Text(
                    industry,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: industry.toString().length == 14 ? 11 : 12,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              right:1,
              top: 1,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Color(0xff8E8E8E),
                    borderRadius: BorderRadius.circular(20)
                )
              )
          ),
          Positioned(
              right: 6,
              top: 6,
              child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                child: Icon(
                  Icons.add,
                  size: 20,
                ),
              )
          ),
        ],
      ),
    );
  }
}
