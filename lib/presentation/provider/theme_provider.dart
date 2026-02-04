import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
   ThemeMode _themeMode = ThemeMode.light;
   ThemeMode get themeMode  => _themeMode ;
   bool get isDarkTheme => _themeMode==ThemeData.dark;
   void themeToggle(){
     _themeMode = _themeMode==ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
     notifyListeners();
   }
}