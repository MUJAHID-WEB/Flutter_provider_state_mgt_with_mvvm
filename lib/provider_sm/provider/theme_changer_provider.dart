import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChange with ChangeNotifier{

  var _themeMode = ThemeMode.light;
  ThemeMode get themeModeDL => _themeMode;

  void setTheme(themeModeDL){
    _themeMode = themeModeDL;
    notifyListeners();
  }
}