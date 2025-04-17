
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/theme.dart';

class Themeprovider with ChangeNotifier {

  bool _isDarkMode=false;
  double _opacity=1;

  bool get isDarkMode=>_isDarkMode;
  double get opacity=>_opacity;
  // set opacity(double value) {
  //   _opacity = value;
  //   notifyListeners();
  // }

  // void setopacity() {
  //  Timer( Duration(milliseconds: 500), () {
  //     _opacity = 1;
  //     notifyListeners(); // Tells UI to rebuild with new opacity
  //   });
  
  // }

  // void resetopacity() {
  //   _opacity = 0;
  //   notifyListeners();
  // }

 
  ThemeData get currentTheme {
    return _isDarkMode ? TAppTheme.darkTheme : TAppTheme.lightTheme;
  }
   void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    //_opacity = 0;
    notifyListeners();
  }

}