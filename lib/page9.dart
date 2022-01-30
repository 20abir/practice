import 'package:flutter/material.dart';

class Page9 extends StatelessWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              GridContainer(),
              GridContainer(),
              GridContainer(),
              GridContainer()
            ],
          ),
        ),
      ),
    );
  }
}

class GridContainer extends StatelessWidget {
  const GridContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 250,
      color: Colors.redAccent,
    );
  }
}
