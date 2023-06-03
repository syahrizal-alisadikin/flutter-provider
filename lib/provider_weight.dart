import 'package:flutter/material.dart';

class ProviderWeight with ChangeNotifier {
  double _weight = 40;
  double get weight => _weight;

  set weight(double newValue) {
    _weight = newValue;
    notifyListeners();
  }
}
