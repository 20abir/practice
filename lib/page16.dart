import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page16 extends StatefulWidget {
  Page16({Key? key}) : super(key: key);

  @override
  State<Page16> createState() => _Page16State();
}

class _Page16State extends State<Page16> {
  static const url = "https://www.google.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          RaisedButton(
            onPressed: () {
              launch(url);
            },
            child: Text("Googole"),
          ),
          RaisedButton(
            onPressed: () {
              launch("tel:01706384511");
            },
            child: Text("Phone"),
          ),
          RaisedButton(
            onPressed: () {
              launch("sms:01706384511");
            },
            child: Text("SMS"),
          ),
        ],
      )),
    );
  }
}
