import 'package:flutter/material.dart';

import '../styles/font_styles.dart';
import '../styles/sizes.dart';

class CustomText extends Container {
  CustomText(
    BuildContext context,
    String text, {
    Key? key,
    double? size,
    color,
    weight,
    width,
    bool underline = false,
    strutStyle,
    textAlign,
    textDirection,
    locale,
    softWrap,
    overflow,
    textScaleFactor,
    maxLines,
    semanticsLabel,
    textWidthBasis,
    height,
    textHeightBehavior,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    Alignment? alignment,
  }) : super(
          key: key,
          margin: margin,
          padding: padding,
          alignment: alignment,
          width: width,
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: size,
              fontWeight: weight,
              decoration: underline ? TextDecoration.underline : null,
            ),
            strutStyle: strutStyle,
            textAlign: textAlign,
            textDirection: textDirection,
            locale: locale,
            softWrap: softWrap,
            overflow: overflow,
            textScaleFactor: textScaleFactor,
            maxLines: maxLines,
            semanticsLabel: semanticsLabel,
            textWidthBasis: textWidthBasis,
            textHeightBehavior: textHeightBehavior,
          ),
        );

  CustomText.h0(
    BuildContext context,
    String text, {
    Key? key,
    Color? color,
    FontWeight? weight,
    bool? underline,
    TextAlign? textAlign,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? height,
    int? maxLines,
    Alignment? alignment,
  }) : this(
          context,
          text,
          key: key,
          maxLines: maxLines,
          size: Sizes.fontSizes(context)['h0'],
          padding: padding,
          margin: margin,
          height: height,
          color: color ?? Theme.of(context).textTheme.headlineLarge?.color,
          weight: weight ?? FontStyles.fontWeightLight,
          textAlign: textAlign,
          alignment: alignment,
        );

  CustomText.h1(
    // Don't use Get.theme because it is immutable, so theme change won't work.
    BuildContext context,
    String text, {
    Key? key,
    Color? color,
    FontWeight? weight,
    bool? underline,
    TextAlign? textAlign,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? height,
    int? maxLines,
    Alignment? alignment,
  }) : this(
          context,
          text,
          key: key,
          maxLines: maxLines,
          size: Sizes.fontSizes(context)['h1'],
          padding: padding,
          margin: margin,
          height: height,
          weight: weight ?? FontStyles.fontWeightLight,
          textAlign: textAlign,
          alignment: alignment,
        );

  CustomText.h2(
    BuildContext context,
    String text, {
    Key? key,
    Color? color,
    FontWeight? weight,
    TextAlign? textAlign,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
  }) : this(
          context,
          text,
          key: key,
          padding: padding,
          margin: margin,
          size: Sizes.fontSizes(context)['h2'],
          color: color ?? Theme.of(context).textTheme.headlineLarge?.color,
          weight: weight ?? FontStyles.fontWeightBlack,
          textAlign: textAlign,
        );
}
