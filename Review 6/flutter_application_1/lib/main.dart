import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/theme_page.dart';
import 'pages/snackbar_page.dart';
import 'pages/alert_page.dart';
import 'pages/introduction_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: TextTheme(
        headlineLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        fontFamily: 'Serif'
        ),
        bodyLarge: TextStyle(color: Colors.black87),
        bodyMedium: TextStyle(color: Colors.black54),
        bodySmall: TextStyle(color: Colors.black45),
        ),
      ),
      themeMode: ThemeMode.system,
      home: const AlertPage(),
    );
  }
}
