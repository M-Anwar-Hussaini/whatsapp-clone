import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/app_theme.dart';
import 'package:whatsapp_clone/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
