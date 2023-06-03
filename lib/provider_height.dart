import 'package:flutter/material.dart';

class ProviderHeight with ChangeNotifier {
  double _height = 40;
  double get height => _height;

  set height(double newValue) {
    _height = newValue;
    notifyListeners();
  }
}
