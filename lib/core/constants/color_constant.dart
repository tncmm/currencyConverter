import 'package:currency_converter/core/init/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ColorConstants {
  ColorConstants._init();
  static ColorConstants? _instance;
  static ColorConstants get instance {
    _instance ??= ColorConstants._init();
    return _instance!;
  }

  Color get black => Colors.black;
  Color get white => Colors.white;

  Color get blueDark => const Color(0xFF1D9BF0);
  Color get red => Colors.red;
  Color get gray => const Color(0xFF464646);
  Color get grayLight => const Color.fromARGB(255, 198, 198, 198);
  Color get grayDark => const Color(0xff18191B);
  Color get green => Colors.green;
  Color get unSelectableColor =>
      AppTheme.instance.colorScheme.onBackground.withOpacity(.1);
  Color get selectedColor => AppTheme.instance.colorScheme.background;
  Color get purple => const Color(0xffB15EFF);
  Color get selectGray => const Color(0xff17181d);
}
