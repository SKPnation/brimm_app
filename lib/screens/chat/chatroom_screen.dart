import 'dart:io';

import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/imagePickerAndroid.dart';
import 'package:brimm_app/utils/imagePickerIos.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart';


import 'components/text_widget.dart';

class ChatroomScreen extends StatefulWidget {
  @override
  _ChatroomScreenState createState() => _ChatroomScreenState();
}

class _ChatroomScreenState extends State<ChatroomScreen> {

  final ValueNotifier<double> heightOfText = ValueNotifier<double>(45.00);
  final key = GlobalKey();

  final TextEditingController _sendtextController = TextEditingController();

  bool mic = true;

  double textFieldWidth;
  Size textSize;

  List<String> menuOptions = ['Exit'];

  var _numOfParticipants = '1/30';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name of group chat',
                style: TextStyle(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('$_numOfParticipants',
                    style: TextStyle(
                        fontSize: 14,
                        color: kPrimaryColor
                    ),),
                ],
              ),
              SizedBox(height: 5),
            ],
          ),
          centerTitle: false,
          backgroundColor: Colors.black,
          actions: [
            PopupMenuButton<String>(
                onSelected: optionAction,
                itemBuilder: (BuildContext context) {
                  return menuOptions.map((String option) {
                    return PopupMenuItem(
                        value: option, child: Center(
                      child: Text(option),
                    ));
                  }).toList();
                })
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        reverse: true,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        itemCount: industryList.length,
                        itemBuilder: (context, index) =>
                            TextWidgetInChat(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ValueListenableBuilder(
                      valueListenable: heightOfText,
                      builder: (context, value, child) => AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        width: displayWidth(context) * 0.86,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        height: 50.0,
                        curve: Curves.easeIn,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                  Icons.attach_file,
                                  size: 25.22
                              ),
                              color: kPrimaryColor,
                              onPressed: () async {
                                var status = await Permission.storage.isGranted;
                                if (!status) {
                                  await Permission.storage.request();
                                  status = await Permission.storage.isGranted;
                                }
                                print(status);
                                if(status){
                                  var result = await Navigator.of(context)
                                      .push(MaterialPageRoute(
                                    builder: (context) => Platform.isIOS
                                        ? ImagePickerPageIOS()
                                        : ImagePickerAndroid(),
                                  ));
                                }
                              },
                            ),
                            Expanded(
                                child: TextField(
                                  key: key,
                                  controller: _sendtextController,
                                  scrollPhysics: BouncingScrollPhysics(),
                                  decoration: InputDecoration(
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    hintText: "Type Something...",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                    minLines: null,
                                    maxLines: null,
                                    expands: true,
                                    onChanged: (String e) {
                                      if (_sendtextController.text.isEmpty) {
                                        setState(() {
                                          mic = true;
                                        });
                                      } else if (_sendtextController.text.length ==
                                          1) {
                                        setState(() {
                                          mic = false;
                                        });
                                      }
                                      changeTextFieldSize(e);
                                    }),
                            ),
                            if(mic)
                              Padding(
                                padding: EdgeInsets.only(right: 4),
                                child: IconButton(
                                 icon: Icon(
                                   Icons.mic,
                                   size: 28.22,
                                   color: kPrimaryColor
                                 )
                                ),
                              )
                            else if(!mic)
                              Padding(
                                padding: EdgeInsets.only(right: 4),
                                child: IconButton(
                                    icon: Icon(
                                        Icons.send,
                                        color: kPrimaryColor,
                                        size: 25.22
                                    ),
                                    onPressed: (){}),
                              )
                          ],
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void optionAction(String value) {
    print('$value selected');
  }

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }

  double getWidth() {
    return key.currentState.context.size.width;
  }

  void changeTextFieldSize(String e) {
    if (textFieldWidth == null) {
      textFieldWidth = getWidth();
    }
    double cal = e.length * textSize.width;
    int numlines = (cal / textFieldWidth).ceil();
    if (numlines != heightOfText.value / 40 && numlines > 1) {
      double cal = 40 + (numlines * 8).toDouble();
      if (cal > 90) {
        heightOfText.value = 90;
      } else {
        heightOfText.value = cal == 50.00 ? 40.00 : cal;
      }
    } else if (numlines == 1) {
      heightOfText.value = 40.00;
    }
  }
}

