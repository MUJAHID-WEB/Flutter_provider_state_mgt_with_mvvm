

import 'package:flutter/foundation.dart';

class Ps2Provider with ChangeNotifier{
  double _val = 1;
  double get val => _val;

  //
  void setVal(double newVal){
    _val = newVal;
    notifyListeners();
  }
}