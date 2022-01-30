import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  File? _image;

  // ignore: non_constant_identifier_names
  Future CameraImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = _image;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: width,
            color: Colors.blue,
            child: _image == null
                ? Text("No Image Selected")
                : Image.file(_image!),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  CameraImage();
                },
                child: Icon(Icons.camera),
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.photo_library),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
