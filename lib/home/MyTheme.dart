import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const String name = 'Ahmed';
  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(size: 36, color: Colors.black)
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30, color: Colors.black),
        headline6: TextStyle(
        fontSize: 30, color: Colors.white),
      subtitle1: TextStyle(
          fontSize: 20, color: Colors.black),
      headline4: TextStyle(
          fontSize: 25, color:lightPrimary),
    ),


    );
  static final ThemeData darkTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(size: 36, color: Colors.black)
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30, color: Colors.black),
      subtitle1: TextStyle(
          fontSize: 20, color: Colors.black),
      headline4: TextStyle(
          fontSize: 25, color:lightPrimary),
    ),


    );




}
