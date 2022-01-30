import 'package:flutter/material.dart';

class BottomNev1 extends StatelessWidget {
  const BottomNev1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Text("Hello one"),
      ),
    );
  }
}
