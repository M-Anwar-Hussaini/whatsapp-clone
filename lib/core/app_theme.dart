import 'package:flutter/material.dart';

// The general colorScheme of the application
ColorScheme _colorScheme = ColorScheme.fromSeed(
  seedColor: Color(0xFF075E54),
  secondary: Color(0xFF128C7E),
);

class AppTheme {
  const AppTheme._();

  static ThemeData theme = ThemeData(
    colorScheme: _colorScheme,

    // AppBar theme
    appBarTheme: AppBarTheme(
      backgroundColor: _colorScheme.primary,
      foregroundColor: _colorScheme.onPrimary,
    ),

    // Tab bar theme
    tabBarTheme: TabBarThemeData(
      labelColor: _colorScheme.onPrimary,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelColor: _colorScheme.onPrimary,
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      indicatorColor: _colorScheme.onPrimary,
      indicatorSize: .tab,
    ),

    // Floating action button theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _colorScheme.primary,
      foregroundColor: _colorScheme.onPrimary,
      shape: CircleBorder(),
    ),
  );
}
