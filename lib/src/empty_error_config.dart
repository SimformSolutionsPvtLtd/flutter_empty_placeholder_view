import 'package:empty_placeholder_view/src/values/strings.dart';

class EmptyErrorConfig {
  final String? errorTitle;
  final String? errorSubtitle;
  final String? emptyTitle;
  final String? emptySubtitle;

  EmptyErrorConfig({
    this.errorTitle = AppStrings.oops,
    this.errorSubtitle = AppStrings.somethingWentWrong,
    this.emptyTitle = AppStrings.unavailable,
    this.emptySubtitle = AppStrings.dataUnavailable,
  });
}
