import 'package:flutter/material.dart';

class BottomNev2 extends StatelessWidget {
  const BottomNev2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Text("Hello Two"),
      ),
    );
  }
}
