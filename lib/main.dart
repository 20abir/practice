import 'package:flutter/material.dart';
import 'package:practice/page1.dart';
import 'package:practice/page10.dart';
import 'package:practice/page11.dart';
import 'package:practice/page12.dart';
import 'package:practice/page13.dart';
import 'package:practice/page14.dart';
import 'package:practice/page2.dart';
import 'package:practice/page3.dart';
import 'package:practice/page4.dart';
import 'package:practice/page5.dart';
import 'package:practice/page6.dart';
import 'package:practice/page7.dart';
import 'package:practice/page8.dart';
import 'package:practice/page9.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Practice"),
        ),
        body: PageView(
          controller: _controller,
          children: [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
            Page5(),
            Page6(),
            Page7(),
            Page8(),
            Page9(),
            Page10(),
            Page11(),
            Page12(),
            Page13(),
            Page14(),
          ],
        ),
      ),
    );
  }
}
