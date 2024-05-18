import 'package:currency_converter/core/constants/application_constants.dart';
import 'package:flutter/material.dart';

import '../../app_theme.dart';

class TextThemeLight implements ITextTheme {
  TextThemeLight._init();
  static TextThemeLight? _instance;
  static TextThemeLight get instance {
    _instance ??= TextThemeLight._init();
    return _instance!;
  }

  @override
  TextStyle titleLarge = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: Colors.black,
  );
  @override
  TextStyle titleMedium = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: Colors.black,
  );
  @override
  TextStyle titleSmall = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: Colors.black,
  );
  @override
  TextStyle bodyLarge = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: Colors.black,
  );
  @override
  TextStyle bodyMedium = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: Colors.black,
  );
  @override
  TextStyle bodySmall = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: Colors.black,
  );
  @override
  TextStyle labelLarge = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: Colors.black,
  );
  @override
  TextStyle labelMedium = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: Colors.black,
  );
  @override
  TextStyle labelSmall = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: Colors.black,
  );
  @override
  TextTheme get theme => TextTheme(
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
      );
}
