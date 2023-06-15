import "package:flutter/material.dart";

ThemeData customDarkTheme() {
  final ThemeData darkTheme = ThemeData.dark();
  return darkTheme.copyWith(
    primaryColor: const Color(0xFFFFD1DC),
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: const Color(0xFF1E1433),
    //accentColor: const Color(0xFFFFF8E1),
    primaryIconTheme: darkTheme.primaryIconTheme.copyWith(
      color: Colors.green,
      size: 20,
    ),
    //cursorColor: Colors.green,
  );
}
