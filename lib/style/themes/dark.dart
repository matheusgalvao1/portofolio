import "package:flutter/material.dart";

ThemeData customDarkTheme() {
  final ThemeData darkTheme = ThemeData.dark();
  return darkTheme.copyWith(
    primaryColor: Color.fromARGB(255, 111, 0, 255),
    indicatorColor: Color.fromARGB(255, 255, 255, 255),
    scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
    //accentColor: const Color(0xFFFFF8E1),
    primaryIconTheme: darkTheme.primaryIconTheme.copyWith(
      color: Colors.green,
      size: 20,
    ),
    //cursorColor: Colors.green,
  );
}
