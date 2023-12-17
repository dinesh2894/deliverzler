import 'package:deliverzler/core/components/services/responsive_service.dart';
import 'package:deliverzler/core/extensions/num_extensions.dart';
import 'package:flutter/cupertino.dart';

import '../services/responsive_service.dart';

class Sizes {
  // Screen Sizes
  static fullScreenHeight(BuildContext context) => ResponsiveService.fullScreenHeight(context);

  static fullScreenWidth(BuildContext context) => ResponsiveService.fullScreenWidth(context);

  static availableScreenHeight(BuildContext context) =>
      ResponsiveService.availableScreenHeight(context);

  static availableScreenWidth(BuildContext context) =>
      ResponsiveService.availableScreenWidth(context);

  static screenBarHeight(BuildContext context) => ResponsiveService.deviceTopPadding(context);

  // Font Sizes
  static fontSizes(BuildContext context) => {
        "h0": 40.0.sp(context),
        "h1": 32.0.sp(context),
        "h2": 24.0.sp(context),
        "h3": 20.0.sp(context),
        "h4": 17.0.sp(context),
        "h5": 14.0.sp(context),
        "h6": 12.0.sp(context),
      };

  static iconSizes(BuildContext context) => {
        "s1": 95.r(context),
        "s2": 70.r(context),
        "s3": 48.r(context),
        "s4": 32.r(context),
        "s5": 24.r(context),
        "s6": 19.r(context),
        "s7": 14.r(context),
      };

  // Screens Padding
  static screenVPaddingDefault(BuildContext context) => 20.h(context);

  static screenHPaddingDefault(BuildContext context) => 40.w(context);

  static screenVPaddingHigh(BuildContext context) => 80.h(context);

  static screenHPaddingMedium(BuildContext context) => 36.w(context);

  // Widgets Padding
  static vPaddingHighest(BuildContext context) => 40.h(context);

  static vPaddingHigh(BuildContext context) => 30.h(context);

  static vPaddingMedium(BuildContext context) => 22.h(context);

  static vPaddingSmall(BuildContext context) => 16.h(context);

  static vPaddingSmallest(BuildContext context) => 10.h(context);

  static vPaddingTiny(BuildContext context) => 5.h(context);

  static hPaddingHighest(BuildContext context) => 40.w(context);

  static hPaddingHigh(BuildContext context) => 30.w(context);

  static hPaddingMedium(BuildContext context) => 22.w(context);

  static hPaddingSmall(BuildContext context) => 16.w(context);

  static hPaddingSmallest(BuildContext context) => 10.w(context);

  static hPaddingTiny(BuildContext context) => 5.w(context);

  // Widgets Margin

  static vMarginExtreme(BuildContext context) => 80.h(context);

  static vMarginHighest(BuildContext context) => 40.h(context);

  static vMarginHigh(BuildContext context) => 30.h(context);

  static vMarginMedium(BuildContext context) => 22.h(context);

  static vMarginSmall(BuildContext context) => 16.h(context);

  static vMarginSmallest(BuildContext context) => 10.h(context);

  static vMarginComment(BuildContext context) => 8.h(context);

  static vMarginTiny(BuildContext context) => 5.h(context);

  static vMarginDot(BuildContext context) => 3.h(context);

  static hMarginExtreme(BuildContext context) => 70.w(context);

  static hMarginHighest(BuildContext context) => 40.w(context);

  static hMarginHigh(BuildContext context) => 30.w(context);

  static hMarginMedium(BuildContext context) => 22.w(context);

  static hMarginSmall(BuildContext context) => 16.w(context);

  static hMarginSmallest(BuildContext context) => 10.w(context);

  static hMarginComment(BuildContext context) => 8.w(context);

  static hMarginTiny(BuildContext context) => 5.w(context);

  static hMarginDot(BuildContext context) => 3.w(context);

  // Buttons

  static roundedButtonMinHeight(BuildContext context) => 40.h(context);

  static roundedButtonMinWidth(BuildContext context) => 60.h(context);

  static roundedButtonDefaultHeight(BuildContext context) => 50.h(context);

  static roundedButtonDefaultWidth(BuildContext context) => 300.h(context);

  static roundedButtonDefaultRadius(BuildContext context) => 26.r(context);

  static roundedButtonDialogHeight(BuildContext context) => 44.h(context);

  static roundedButtonDialogWidth(BuildContext context) => 240.w(context);

  static roundedButtonHighWidth(BuildContext context) => 44.h(context);


}
