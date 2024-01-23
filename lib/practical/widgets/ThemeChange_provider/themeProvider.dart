import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{
  ThemeMode _themechange = ThemeMode.light;

   ThemeMode get themechange => _themechange;

   void setTheme(themeChange){
     _themechange = themeChange;
     notifyListeners();
   }



}