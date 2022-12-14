import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String appLanguage = 'en';
  String appTheme = 'dark';
ThemeMode currentTheme = ThemeMode.light;

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }
  void changeTheme(ThemeMode newMode) {
    currentTheme = newMode;
    notifyListeners();
  }

bool isDarkMode(){
    return appTheme == ThemeMode.dark;
}
}
