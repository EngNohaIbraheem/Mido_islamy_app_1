import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  String appLanguage = 'en';
  String appTheme = 'dark';
ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String newLanguage) async{
    final preferences = await SharedPreferences.getInstance();
    if(newLanguage == appLanguage){
      return;
    }
    appLanguage = newLanguage;
    preferences.setString('language', appLanguage);
    notifyListeners();
  }
  void changeTheme(ThemeMode newMode)async {
    final preferences = await SharedPreferences.getInstance();
    if(newMode == themeMode) {
      return;
    }
    themeMode = newMode ;
    preferences.setString('theme',(themeMode == ThemeMode.dark)? 'dark':'light');

    notifyListeners();
  }

bool isDarkMode(){
    return themeMode == ThemeMode.dark; ////KAN 5ATAAAAAA
}
}
