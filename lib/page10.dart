import 'package:flutter/material.dart';

class Page10 extends StatelessWidget {
  const Page10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Builder(
          builder: (BuildContext con) {
            return RaisedButton(
              onPressed: () {
                Scaffold.of(con).showSnackBar(
                  SnackBar(
                    content: Text("Hello i am Snackbar"),
                    duration: Duration(seconds: 10),
                    action: SnackBarAction(
                      label: "Ok",
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: Text("SnackBar"),
            );
          },
        ),
      ),
    );
  }
}
