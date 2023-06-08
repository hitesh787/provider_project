import 'package:flutter/cupertino.dart';

class BottomNavigatorBarProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void changeSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
