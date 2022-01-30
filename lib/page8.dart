import 'package:flutter/material.dart';

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          height: 250,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "Tawhid Lubnan",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    "Hello, I am a simple Software Developer, now i start a new job for developing my dream with my self"),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: -50,
                            child: CircleAvatar(
                              radius: 50,
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(70)),
                                  child: Image.asset(
                                    "assets/images/tawhid.jpeg",
                                    fit: BoxFit.cover,
                                  )),
                              backgroundColor: Colors.transparent,
                            )),
                      ],
                    ),
                  );
                });
          },
          child: Text("Custom Alert"),
        ),
      ),
    );
  }
}
