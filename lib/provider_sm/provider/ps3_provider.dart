

import 'package:flutter/foundation.dart';

class Ps3Provider with ChangeNotifier{
List<int> _selectedItem = [];
List<int> get val => _selectedItem;

  //
  void addItem(int newVal){
    _selectedItem.add(newVal);
    notifyListeners();
  }

    void removeItem(int newVal){
    _selectedItem.remove(newVal);
    notifyListeners();
  }
}