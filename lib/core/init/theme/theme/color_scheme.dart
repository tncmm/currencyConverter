import 'package:flutter/material.dart';

class AppColorScheme {
  AppColorScheme._init();
  static AppColorScheme? _instace;
  static AppColorScheme get instance {
    _instace ??= AppColorScheme._init();
    return _instace!;
  }

  Color get black => Colors.black;

  Color get lightGray => const Color(0xFFD9D9D9);
  Color get midGray => const Color(0xFF585D62);
  Color get darkGray => const Color(0xFF787E85);

  Color get lightHintColor => const Color(0xFF53656F);
  Color get lightTextColor => const Color.fromRGBO(18, 18, 18, 1);
  Color get lightInfoSectionColor => const Color.fromRGBO(70, 81, 91, 1);

  //Old color: 0xFF00AECF
  Color get blueDark => const Color(0xFF1D9BF0);

  Color get blueLight => const Color(0xFF1DCAFD);

  Color get blueVeryDark => const Color(0xFF0084B5);

  Color get blueExtraDark => const Color(0xFF0E1D2E);

  Color get blueVeryLight => const Color.fromARGB(255, 221, 221, 221);

  Color get gold => const Color(0xffFDBF00);

  Color get goldDark => const Color(0xFF907900);

  Color get goldLight => const Color(0xFFDDD296);

  Color get goldVeryLight => const Color(0xFFFFFBD8);

  Color get grayDark => const Color(0xFFB9B9B9);

  Color get grayLight => const Color(0xFFF4F4F4);

  Color get grayVeryDark => const Color(0xFF747474);

  Color get grayVeryLight => const Color(0xFFEDEDED);

  Color get greenDark => const Color(0xFF183D56);

  Color get green => const Color(0xFF12B76A);

  Color get greenLight => const Color(0xFF3A6573);

  Color get greenVeryLight => const Color(0xFF99C0B9);

  Color get orange => const Color(0xFFF76D6A);

  Color get red => const Color(0xFFE53935);

  Color get pink => const Color(0xFFDC46B1);

  Color get purpleDark => const Color(0xFF5E35B1);

  Color get purpleLight => const Color(0xFF933BFF);

  Color get white => const Color(0xFFFFFFFF);

  Color get chipBackgroundColor => const Color(0xFF1B1F2B);

  Color get titleBlueDark => const Color(0xFF131D32);

  Color get subtitleBlue => const Color(0xFF313B5D);

  Color get hintColor => const Color(0xFFBCC1CE);
  Color get textFieldBackgroundColor => const Color(0xFFF3F3F3);
  Color get textFieldProBackgroundColor =>
      const Color.fromARGB(255, 253, 244, 219);

  Color get textFieldBlueLightBackgroundColor => const Color(0xFFEEFAFF);
  Color get textFieldBorderColor => const Color(0xFF00ACEF);

  Color get loginChooseModeCardBackgroundColor => const Color(0xFFEAEAEA);

  Color get proTextFieldBackgroundColor => const Color(0xff1A1A1A);
  Color get proBackgroundColor => const Color(0xff333333);

  Color get selectGray => const Color(0xff17181d);
  Color get purple => const Color(0xff9747FF);
}
