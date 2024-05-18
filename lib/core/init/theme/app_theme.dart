import 'package:currency_converter/core/constants/application_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme/color_scheme.dart';
import 'theme/dark/text_theme_dark.dart';
import 'theme/light/text_theme_light.dart';

part 'theme/app_theme.dart';

part 'theme/custom/custom_text_field_theme.dart';

part 'theme/itext_theme.dart';

class AppTheme
    implements _AppDarkTheme, _AppLightTheme, _ProDarkTheme, _ProLightTheme {
  static final AppTheme instance = AppTheme._internal();

  factory AppTheme() => instance;

  AppTheme._internal();

  @override
  ColorScheme get colorScheme => themeData.colorScheme;

  @override
  TextTheme get textTheme => themeData.textTheme;

  @override
  ThemeData get themeData => darkTheme;

  ThemeData get darkTheme => _AppDarkTheme().themeData;
  ThemeData get lightTheme => _AppLightTheme().themeData;
}
