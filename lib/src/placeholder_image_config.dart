import 'package:flutter/material.dart';

class PlaceHolderImageConfig {
  final String? placeholderImage;
  final String? darkPlaceholderImage;
  final EdgeInsets extraPadding;
  final String? animationName;

  PlaceHolderImageConfig({
    this.placeholderImage,
    this.darkPlaceholderImage,
    this.extraPadding = const EdgeInsets.all(0),
    this.animationName,
  });
}
