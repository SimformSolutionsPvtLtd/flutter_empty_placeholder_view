import 'package:flutter/material.dart';

class ButtonConfig {
  final String? buttonText;
  final double buttonWidth;
  final double buttonHeight;
  final Color buttonColor;
  final Color buttonTextColor;
  final bool hideButton;
  final TextStyle? buttonTextStyle;

  ButtonConfig({
    this.buttonText,
    this.buttonWidth = 120,
    this.buttonHeight = 64,
    this.buttonColor = Colors.blueGrey,
    this.buttonTextColor = Colors.white,
    this.hideButton = false,
    this.buttonTextStyle,
  });
}
