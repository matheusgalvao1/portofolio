import 'package:flutter/material.dart';
import 'package:web_app/style/themes/dark.dart';
import 'package:web_app/style/themes/light.dart';
import 'package:web_app/views/chat/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portofolio',
      darkTheme: customDarkTheme(),
      theme: customLightTheme(),
      themeMode: ThemeMode.dark,
      home: const SafeArea(child: ChatView()),
    );
  }
}
