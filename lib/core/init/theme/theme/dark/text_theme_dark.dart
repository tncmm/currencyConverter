import 'package:currency_converter/core/constants/application_constants.dart';
import 'package:currency_converter/core/init/theme/theme/color_scheme.dart';
import 'package:flutter/material.dart';

import '../../app_theme.dart';

class TextThemeDark implements ITextTheme {
  TextThemeDark._init();
  static TextThemeDark? _instance;
  static TextThemeDark get instance {
    _instance ??= TextThemeDark._init();
    return _instance!;
  }

  @override
  TextStyle titleLarge = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: AppColorScheme.instance.lightGray,
  );

  @override
  TextStyle titleMedium = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: AppColorScheme.instance.lightGray,
  );

  @override
  TextStyle titleSmall = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: AppColorScheme.instance.lightGray,
  );

  @override
  TextStyle bodyLarge = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: AppColorScheme.instance.lightGray,
  );

  @override
  TextStyle bodyMedium = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextStyle bodySmall = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextStyle labelLarge = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextStyle labelMedium = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextStyle labelSmall = TextStyle(
    fontFamily: ApplicationConstants.instance.fontFamily,
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextTheme get theme => TextTheme(
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
      );
}
