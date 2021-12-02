import 'package:flutter/material.dart';

class ButtonConfig {
  final String? buttonText;
  final double buttonWidth;
  final Color buttonColor;
  final Color buttonTextColor;
  final bool hideButton;

  ButtonConfig({
    this.buttonText,
    this.buttonWidth = 120,
    this.buttonColor = Colors.blueGrey,
    this.buttonTextColor = Colors.white,
    this.hideButton = false,
  });
}
