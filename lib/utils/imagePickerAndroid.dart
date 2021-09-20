import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:storage_path/storage_path.dart';

import 'fileModel.dart';

class ImagePickerAndroid extends StatefulWidget {
  ImagePickerAndroid({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerAndroid> {
  List<FileModel> files;
  FileModel selectedModel;
  String image;
  bool loaded = false;
  bool noImagesInSelectedModel = false;
  @override
  void initState() {
    super.initState();
    getImagesPath();
  }

  getImagesPath() async {
    var imagePath = await StoragePath.imagesPath;
    var images = jsonDecode(imagePath) as List;
    files = images.map<FileModel>((e) => FileModel.fromJson(e)).toList();
    print(files);
    if (files != null && files.length > 0)
      setState(() {
        selectedModel = files[0];
        image = files[0].files[0];
        loaded = true;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: loaded
            ? Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    SizedBox(width: 10),
                    DropdownButtonHideUnderline(
                        child: DropdownButton<FileModel>(
                          items: getItems(),
                          onChanged: (FileModel d) {
                            if (d.files.length > 0) {
                              image = d.files[0];
                              setState(() {
                                selectedModel = d;
                              });
                            } else {
                              setState(() {
                                noImagesInSelectedModel = true;
                              });
                            }
                          },
                          value: selectedModel,
                        ))
                  ],
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop(image);
                  },
                )
              ],
            ),
            Divider(),
            Container(
                height: MediaQuery.of(context).size.height * 0.45,
                child: image != null
                    ? Image.file(File(image),
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width)
                    : Container()),
            Divider(),
            selectedModel == null && noImagesInSelectedModel
                ? Container(
              child: Center(
                child: Text(
                  'No Images Found',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                  ),
                ),
              ),
            )
                : Container(
              height: MediaQuery.of(context).size.height * 0.38,
              child: GridView.builder(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4),
                  itemBuilder: (_, i) {
                    var file = selectedModel.files[i];
                    return GestureDetector(
                      child: Image.file(
                        File(file),
                        fit: BoxFit.cover,
                      ),
                      onTap: () {
                        setState(() {
                          image = file;
                        });
                      },
                    );
                  },
                  itemCount: selectedModel.files.length),
            )
          ],
        )
            : Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  List<DropdownMenuItem> getItems() {
    return files
        .map((e) => DropdownMenuItem(
      child: Text(
        e.folder,
        style: TextStyle(color: Colors.black),
      ),
      value: e,
    ))
        .toList() ??
        [];
  }
}