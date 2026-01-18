import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get _theme => Theme.of(this);
  Color get primary => _theme.colorScheme.primary;
  Color get onPrimary => _theme.colorScheme.onPrimary;
  Color get secondary => _theme.colorScheme.secondary;
  Color get onSecondary => _theme.colorScheme.onSecondary;
}
