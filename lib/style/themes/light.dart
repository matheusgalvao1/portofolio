import "package:flutter/material.dart";

ThemeData customLightTheme() {
  final ThemeData lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    primaryColor: Colors.purple,
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: Colors.white,
    //accentColor: const Color(0xFFFFF8E1),
    primaryIconTheme: lightTheme.primaryIconTheme.copyWith(
      color: Colors.white,
      size: 20,
    ),
    iconTheme: lightTheme.iconTheme.copyWith(
      color: Colors.white,
    ),
    //buttonColor: Colors.white,
    //backgroundColor: Colors.white,
    tabBarTheme: lightTheme.tabBarTheme.copyWith(
      labelColor: const Color(0xffce107c),
      unselectedLabelColor: Colors.grey,
    ),
    buttonTheme: lightTheme.buttonTheme.copyWith(buttonColor: Colors.red),
    //cursorColor: Colors.deepPurple,
  );
}
