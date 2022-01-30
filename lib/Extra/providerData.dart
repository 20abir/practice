import 'package:flutter/material.dart';

class ProviderData extends ChangeNotifier {
  int value = 0;

  // ignore: non_constant_identifier_names
  Increment() {
    value++;

    notifyListeners();
  }
}
