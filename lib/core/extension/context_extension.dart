import 'package:currency_converter/core/constants/color_constant.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get lowValue => height * 0.01;
  double get normalValue => height * 0.02;
  double get mediumValue => height * 0.04;
  double get highValue => height * 0.1;

  ThemeData get theme =>
      Theme.of(this).copyWith(extensions: Theme.of(this).extensions.values);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colors => Theme.of(this).colorScheme;
  ColorConstants get appColors => ColorConstants.instance;
}

extension PaddingExtensionSides on BuildContext {
  EdgeInsets get paddingLowLeft => EdgeInsets.only(left: lowValue);
  EdgeInsets get paddingLowRight => EdgeInsets.only(right: lowValue);
  EdgeInsets get paddingLowTop => EdgeInsets.only(top: lowValue);
  EdgeInsets get paddingLowBottom => EdgeInsets.only(bottom: lowValue);

  EdgeInsets get paddingNormalLeft => EdgeInsets.only(left: normalValue);
  EdgeInsets get paddingNormalRight => EdgeInsets.only(right: normalValue);
  EdgeInsets get paddingNormalTop => EdgeInsets.only(top: normalValue);
  EdgeInsets get paddingNormalBottom => EdgeInsets.only(bottom: normalValue);

  EdgeInsets get paddingMediumLeft => EdgeInsets.only(left: mediumValue);
  EdgeInsets get paddingMediumRight => EdgeInsets.only(right: mediumValue);
  EdgeInsets get paddingMediumTop => EdgeInsets.only(top: mediumValue);
  EdgeInsets get paddingMediumBottom => EdgeInsets.only(bottom: mediumValue);

  EdgeInsets get paddingHighLeft => EdgeInsets.only(left: highValue);
  EdgeInsets get paddingHighRight => EdgeInsets.only(right: highValue);
  EdgeInsets get paddingHighTop => EdgeInsets.only(top: highValue);
  EdgeInsets get paddingHighBottom => EdgeInsets.only(bottom: highValue);
}

extension PaddingExtensions on BuildContext {
  EdgeInsets getPadding(double value) => EdgeInsets.all(value);
  EdgeInsets getPaddingVertical(double value) =>
      EdgeInsets.symmetric(vertical: value);
  EdgeInsets getPaddingHorizontal(double value) =>
      EdgeInsets.symmetric(horizontal: value);

  EdgeInsets get paddingLow => getPadding(lowValue);
  EdgeInsets get paddingNormal => getPadding(normalValue);
  EdgeInsets get paddingMedium => getPadding(mediumValue);
  EdgeInsets get paddingHigh => getPadding(highValue);

  EdgeInsets get paddingLowVertical => getPaddingVertical(lowValue);
  EdgeInsets get paddingNormalVertical => getPaddingVertical(normalValue);
  EdgeInsets get paddingMediumVertical => getPaddingVertical(mediumValue);
  EdgeInsets get paddingHighVertical => getPaddingVertical(highValue);

  EdgeInsets get paddingLowHorizontal => getPaddingHorizontal(lowValue);
  EdgeInsets get paddingNormalHorizontal => getPaddingHorizontal(normalValue);
  EdgeInsets get paddingMediumHorizontal => getPaddingHorizontal(mediumValue);
  EdgeInsets get paddingHighHorizontal => getPaddingHorizontal(highValue);
}

extension BorderRadiusExtensions on BuildContext {
  BorderRadius get borderRadiusLow => BorderRadius.circular(8);
  BorderRadius get borderRadiusConstant => BorderRadius.circular(10);
  BorderRadius get borderRadiusNormal => BorderRadius.circular(12);
  BorderRadius get borderRadiusMedium => BorderRadius.circular(20);
  BorderRadius get borderRadiusHigh => BorderRadius.circular(50);
}
