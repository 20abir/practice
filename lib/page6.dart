import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("One"),
                          subtitle: Text("This is One"),
                          trailing: Icon(Icons.alarm_add),
                        ),
                        ListTile(
                          title: Text("Two"),
                          subtitle: Text("This is Two"),
                          trailing: Icon(Icons.alarm_add),
                        ),
                        ListTile(
                          title: Text("Three"),
                          subtitle: Text("This is Three"),
                          trailing: Icon(Icons.alarm_add),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
