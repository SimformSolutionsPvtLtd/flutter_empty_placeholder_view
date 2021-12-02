import 'package:empty_placeholder_view/src/values/strings.dart';
import 'package:flutter/material.dart';

import '../emptyplaceholderview.dart';

class LoadingConfig {
  final String loadingTitle;
  final String loadingSubtitle;
  final LoaderName loadingWidgetName;
  final Widget? loadingWidget;
  final Color? loadingColor;
  final double loadingSize;
  final bool isLoadingOnTop;

  LoadingConfig({
    this.loadingTitle = AppStrings.holdOn,
    this.loadingSubtitle = AppStrings.defaultLoadingSubtitle,
    this.loadingWidgetName = LoaderName.threeBounce,
    this.loadingWidget,
    this.loadingColor,
    this.loadingSize = 32,
    this.isLoadingOnTop = false,
  });
}
