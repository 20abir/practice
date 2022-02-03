import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:practice/Extra/users.dart';

import 'Extra/service.dart';

class Page15 extends StatefulWidget {
  const Page15({Key? key}) : super(key: key);

  @override
  _Page15State createState() => _Page15State();
}

class _Page15State extends State<Page15> {
  List<User>? _users;
  bool? _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    Service.getUsers().then((users) {
      setState(() {
        _users = users!;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            // ignore: unnecessary_null_comparison
            itemCount: null == _users ? 0 : _users!.length,
            itemBuilder: (context, index) {
              User user = _users![index];
              return ListTile(
                title: Text(user.name!),
                subtitle: Text(user.email!),
              );
            }),
      ),
    );
  }
}
