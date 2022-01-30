import 'package:flutter/material.dart';

class Page11 extends StatefulWidget {
  const Page11({Key? key}) : super(key: key);

  @override
  State<Page11> createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    String? selected = "Choose";

    return Scaffold(
      body: Center(
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                  text: "Tawhid Lubnan",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  children: [
                    TextSpan(
                      text: "Abir",
                      style: TextStyle(color: Colors.red, fontSize: 40),
                    ),
                  ]),
            ),
            Text(selected),
            DropdownButton(
                items: [
                  DropdownMenuItem(value: "Tawhid", child: Text("Tawhid")),
                  DropdownMenuItem(value: "Lubnan", child: Text("Lubnan")),
                  DropdownMenuItem(value: "Abir", child: Text("Abir")),
                ],
                onChanged: (val) {
                  setState(() {
                    selected = val as String?;
                  });
                })
          ],
        ),
      ),
    );
  }
}
