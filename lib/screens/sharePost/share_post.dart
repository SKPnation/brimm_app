import 'package:brimm_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharePostScreen extends StatefulWidget {
  @override
  _SharePostScreenState createState() => _SharePostScreenState();
}

class _SharePostScreenState extends State<SharePostScreen> {

  TextEditingController _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Share a post'),
          centerTitle: false,
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: (){
                print('share post');
                Get.offAllNamed('/dashboard');
              },
              icon: Icon(Icons.send),
            ),
            SizedBox(width: 25.0)
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 16),
            TextField(
              maxLines: 6,
              style: TextStyle(fontSize: 20, color: Colors.white),
              controller: _bodyController,
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                hintText: 'Type Something here',
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            )
          ],
        ),
      ),
    );
  }
}
