import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,
          children: [
            Container(
              height: height / 4,
              width: width / 2,
              color: Colors.amber,
            ),
            Positioned(
              bottom: -50,
              child: CircleAvatar(
                radius: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
