import 'package:flutter/material.dart';

/// provides extension to get a dependency from provider
extension ContextExtension on BuildContext {
  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;
}

extension StatefulWidgetExtension on State {
  bool get isDarkTheme => Theme.of(context).brightness == Brightness.dark;
}
