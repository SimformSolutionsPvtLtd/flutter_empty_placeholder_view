import 'package:empty_placeholder_view/src/button_config.dart';
import 'package:empty_placeholder_view/src/empty_placeholder_refresh_button.dart';
import 'package:empty_placeholder_view/src/placeholder_image_config.dart';
import 'package:empty_placeholder_view/src/spin_kit_loader.dart';
import 'package:empty_placeholder_view/src/values/enums.dart';
import 'package:empty_placeholder_view/src/values/strings.dart';
import 'package:empty_placeholder_view/src/vector_asset.dart';
import 'package:flutter/material.dart';

import '../emptyplaceholderview.dart';

class EmptyPlaceholder extends StatelessWidget {
  final PlaceHolderState? state;
  final PlaceHolderImageConfig? placeHolderImageConfig;
  final VoidCallback? onButtonClick;
  final LoadingConfig? loadingConfig;
  final ButtonConfig? buttonConfig;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;
  final EmptyErrorConfig? emptyErrorConfig;

  const EmptyPlaceholder({
    Key? key,
    @required this.state,
    this.onButtonClick,
    this.placeHolderImageConfig,
    this.loadingConfig,
    this.buttonConfig,
    this.titleTextStyle,
    this.subTitleTextStyle,
    this.emptyErrorConfig,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? title;
    String? subtitle;

    switch (state) {
      case PlaceHolderState.loading:
        {
          title = loadingConfig?.loadingTitle;
          subtitle = loadingConfig?.loadingSubtitle;
        }
        break;

      case PlaceHolderState.success:
        {
          title = emptyErrorConfig?.emptyTitle;
          subtitle = emptyErrorConfig?.emptySubtitle;
        }
        break;

      case PlaceHolderState.error:
        {
          title = emptyErrorConfig?.errorTitle;
          subtitle = emptyErrorConfig?.errorSubtitle;
        }
        break;

      // PlaceHolderState.idle
      default:
        {
          title = '';
          subtitle = '';
        }
        break;
    }
    return SizedBox.expand(
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (placeHolderImageConfig?.placeholderImage?.isNotEmpty ?? false)
              Flexible(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: placeHolderImageConfig?.extraPadding,
                    child: VectorAsset(
                      image: Theme.of(context).brightness == Brightness.dark
                          ? placeHolderImageConfig?.darkPlaceholderImage ??
                              placeHolderImageConfig?.placeholderImage
                          : placeHolderImageConfig?.placeholderImage,
                      animationName: placeHolderImageConfig?.animationName,
                      fit: BoxFit.contain,
                      width: 10,
                      height: 10,
                    ),
                  ),
                ),
              ),
            loadingConfig!.isLoadingOnTop
                ? _changeLoaderPositionToTop(title, subtitle)
                : _changeLoaderPosition(title, subtitle),
          ],
        ),
      ),
    );
  }

  Widget _changeLoaderPosition(String? title, String? subtitle) {
    return Column(
      children: [
        if (title != null)
          Text(
            title,
            textAlign: TextAlign.center,
            style: titleTextStyle ??
                const TextStyle(
                  fontSize: 20,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.bold,
                ),
          ),
        if (title != null && subtitle != null) const SizedBox(height: 5),
        if (subtitle != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: subTitleTextStyle ??
                  const TextStyle(
                    fontSize: 14,
                    letterSpacing: 0.4,
                  ),
            ),
          ),
        const SizedBox(height: 20),
        Visibility(
          visible:
              state != PlaceHolderState.loading && !buttonConfig!.hideButton,
          child: EmptyPlaceholderRefreshButton(
            onTap: onButtonClick ?? () {},
            height: 46,
            width: buttonConfig?.buttonWidth ?? 120,
            color: buttonConfig?.buttonColor,
            textColor: buttonConfig?.buttonTextColor,
            title: buttonConfig?.buttonText ??
                (state == PlaceHolderState.success
                    ? AppStrings.refresh
                    : AppStrings.retry),
          ),
        ),
        Visibility(
          visible: state == PlaceHolderState.loading,
          child: Container(
            alignment: Alignment.center,
            height: 56,
            child: (loadingConfig?.loadingWidget != null)
                ? loadingConfig?.loadingWidget
                : SpinKitLoader(
                    loaderName: loadingConfig?.loadingWidgetName,
                    color: loadingConfig?.loadingColor,
                    size: loadingConfig?.loadingSize,
                  ),
          ),
        ),
      ],
    );
  }

  Widget _changeLoaderPositionToTop(String? title, String? subtitle) {
    return Column(
      children: [
        Visibility(
          visible: state == PlaceHolderState.loading,
          child: Container(
            alignment: Alignment.center,
            height: 56,
            child: (loadingConfig?.loadingWidget != null)
                ? loadingConfig?.loadingWidget
                : SpinKitLoader(
                    loaderName: loadingConfig?.loadingWidgetName,
                    color: loadingConfig?.loadingColor,
                    size: loadingConfig?.loadingSize,
                  ),
          ),
        ),
        const SizedBox(height: 20),
        if (title != null)
          Text(
            title,
            textAlign: TextAlign.center,
            style: titleTextStyle ??
                const TextStyle(
                  fontSize: 20,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.bold,
                ),
          ),
        if (title != null && subtitle != null) const SizedBox(height: 5),
        if (subtitle != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: subTitleTextStyle ??
                  const TextStyle(
                    fontSize: 14,
                    letterSpacing: 0.4,
                  ),
            ),
          ),
        const SizedBox(height: 24),
        Visibility(
          visible:
              state != PlaceHolderState.loading && !buttonConfig!.hideButton,
          child: EmptyPlaceholderRefreshButton(
            onTap: onButtonClick ?? () {},
            height: 46,
            width: buttonConfig?.buttonWidth ?? 120,
            color: buttonConfig?.buttonColor,
            textColor: buttonConfig?.buttonTextColor,
            title: buttonConfig?.buttonText ??
                (state == PlaceHolderState.success
                    ? AppStrings.refresh
                    : AppStrings.retry),
          ),
        ),
      ],
    );
  }
}
