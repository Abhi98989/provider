import 'package:flutter/foundation.dart';

class ColorProvider with ChangeNotifier {
  double _value = 1.0;
  double get value => _value;

  void setdoubleValue(double value) {
    _value = value;
    notifyListeners();
  }
}
