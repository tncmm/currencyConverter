part of '../app_theme.dart';

abstract class _AppTheme {
  TextTheme get textTheme;
  ColorScheme get colorScheme;
}

class _AppDarkTheme implements _AppTheme {
  @override
  ColorScheme get colorScheme => ColorScheme.dark(
        background: AppColorScheme.instance.black,
        onBackground: AppColorScheme.instance.lightGray,
        brightness: Brightness.dark,
        onPrimary: AppColorScheme.instance.white,
        primary: AppColorScheme.instance.blueDark,
      );

  @override
  TextTheme get textTheme => TextThemeDark.instance.theme;

  ThemeData get themeData => ThemeData(
          colorScheme: colorScheme,
          textTheme: textTheme,
          fontFamily: ApplicationConstants.instance.fontFamily,
          scaffoldBackgroundColor: colorScheme.background,
          primaryColor: colorScheme.primary,
          iconTheme: IconThemeData(color: colorScheme.onBackground),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: textTheme.labelSmall,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: colorScheme.background.withOpacity(.9),
            selectedItemColor: colorScheme.primary,
            unselectedItemColor:
                AppColorScheme.instance.grayVeryDark.withOpacity(.5),
          ),
          tabBarTheme: TabBarTheme(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            indicatorColor: colorScheme.primary,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          chipTheme: ChipThemeData(
            brightness: Brightness.dark,
            selectedColor: colorScheme.primary,
            backgroundColor: colorScheme.background,
            side: BorderSide(color: colorScheme.primary, width: .7),
            labelStyle: TextStyle(
                fontFamily: ApplicationConstants.instance.fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: colorScheme.primary),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
          ),
          popupMenuTheme: PopupMenuThemeData(
              color: colorScheme.onBackground, surfaceTintColor: Colors.amber),
          progressIndicatorTheme: ProgressIndicatorThemeData(
              color: AppColorScheme.instance.darkGray,
              refreshBackgroundColor: AppColorScheme.instance.black),
          drawerTheme: DrawerThemeData(
              elevation: 0,
              shadowColor: colorScheme.onBackground.withOpacity(.5),
              backgroundColor: colorScheme.background,
              surfaceTintColor: colorScheme.onBackground),
          appBarTheme: AppBarTheme(
            backgroundColor: colorScheme.background,
            iconTheme: IconThemeData(color: colorScheme.onBackground),
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
          dividerTheme: DividerThemeData(
            color: colorScheme.onBackground.withOpacity(.3),
            thickness: .3,
          ),
          dividerColor: colorScheme.onBackground.withOpacity(.2),
          extensions: [
            TextFieldTheme(
                hintColor: AppColorScheme.instance.midGray,
                textColor: textTheme.labelSmall!.color!,
                titleColor: textTheme.labelSmall!.color!,
                errorTextColor: AppColorScheme.instance.red,
                backgroundColor: AppColorScheme.instance.black,
                borderColor: AppColorScheme.instance.textFieldBorderColor),
          ]);
}

class _AppLightTheme implements _AppTheme {
  @override
  ColorScheme get colorScheme => ColorScheme.light(
        background: const Color.fromRGBO(250, 250, 250, 1),
        onBackground: AppColorScheme.instance.lightTextColor,
        brightness: Brightness.light,
        onPrimary: AppColorScheme.instance.white,
        primary: AppColorScheme.instance.blueDark,
      );

  @override
  TextTheme get textTheme => TextThemeLight.instance.theme;

  ThemeData get themeData => ThemeData(
          colorScheme: colorScheme,
          textTheme: textTheme,
          fontFamily: ApplicationConstants.instance.fontFamily,
          scaffoldBackgroundColor: colorScheme.background,
          primaryColor: colorScheme.primary,
          iconTheme: IconThemeData(color: colorScheme.onBackground),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: textTheme.labelSmall,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: colorScheme.background.withOpacity(.9),
            selectedItemColor: colorScheme.primary,
            unselectedItemColor:
                AppColorScheme.instance.grayVeryDark.withOpacity(.5),
          ),
          tabBarTheme: TabBarTheme(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            indicatorColor: colorScheme.primary,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          chipTheme: ChipThemeData(
            brightness: Brightness.light,
            selectedColor: colorScheme.primary,
            backgroundColor: colorScheme.background,
            side: BorderSide(color: colorScheme.primary, width: .7),
            labelStyle: TextStyle(
                fontFamily: ApplicationConstants.instance.fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: colorScheme.primary),
          ),
          dividerTheme: DividerThemeData(
            color: colorScheme.onBackground.withOpacity(.3),
            thickness: .3,
          ),
          dividerColor: colorScheme.onBackground.withOpacity(.2),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
          ),
          popupMenuTheme: PopupMenuThemeData(
              color: colorScheme.onBackground, surfaceTintColor: Colors.amber),
          progressIndicatorTheme: ProgressIndicatorThemeData(
              color: AppColorScheme.instance.darkGray,
              refreshBackgroundColor: colorScheme.background),
          drawerTheme: DrawerThemeData(
              elevation: 0,
              shadowColor: colorScheme.onBackground.withOpacity(.5),
              backgroundColor: colorScheme.background,
              surfaceTintColor: colorScheme.onBackground),
          appBarTheme: AppBarTheme(
            backgroundColor: colorScheme.background,
            iconTheme: IconThemeData(color: colorScheme.onBackground),
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          extensions: [
            TextFieldTheme(
                hintColor: AppColorScheme.instance.lightHintColor,
                textColor: textTheme.labelSmall!.color!,
                titleColor: textTheme.labelSmall!.color!,
                errorTextColor: AppColorScheme.instance.red,
                backgroundColor: AppColorScheme.instance.white,
                borderColor: AppColorScheme.instance.textFieldBorderColor),
          ]);
}

class _ProDarkTheme implements _AppTheme {
  @override
  ColorScheme get colorScheme => ColorScheme.dark(
        background: AppColorScheme.instance.black,
        onBackground: AppColorScheme.instance.white,
        brightness: Brightness.dark,
        onPrimary: AppColorScheme.instance.white,
        primary: AppColorScheme.instance.gold,
      );

  @override
  TextTheme get textTheme => TextThemeDark.instance.theme;

  ThemeData get themeData => ThemeData(
          colorScheme: colorScheme,
          textTheme: textTheme,
          fontFamily: ApplicationConstants.instance.fontFamily,
          scaffoldBackgroundColor: colorScheme.background,
          primaryColor: colorScheme.primary,
          iconTheme: IconThemeData(color: colorScheme.onBackground),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: textTheme.labelSmall,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: colorScheme.background.withOpacity(.9),
            selectedItemColor: colorScheme.primary,
            unselectedItemColor:
                AppColorScheme.instance.grayVeryDark.withOpacity(.5),
          ),
          tabBarTheme: TabBarTheme(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            indicatorColor: colorScheme.primary,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          chipTheme: ChipThemeData(
            brightness: Brightness.dark,
            selectedColor: colorScheme.primary,
            backgroundColor: colorScheme.background,
            side: BorderSide(color: colorScheme.primary, width: .7),
            labelStyle: TextStyle(
                fontFamily: ApplicationConstants.instance.fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: colorScheme.primary),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
          ),
          popupMenuTheme: PopupMenuThemeData(
              color: colorScheme.background.withOpacity(.1),
              surfaceTintColor: Colors.amber),
          progressIndicatorTheme: ProgressIndicatorThemeData(
              color: colorScheme.primary,
              refreshBackgroundColor:
                  AppColorScheme.instance.chipBackgroundColor),
          drawerTheme: DrawerThemeData(
              elevation: 0,
              shadowColor: colorScheme.onBackground.withOpacity(.5),
              backgroundColor: colorScheme.background,
              surfaceTintColor: colorScheme.onBackground),
          appBarTheme: AppBarTheme(
            backgroundColor: colorScheme.background,
            iconTheme: IconThemeData(color: colorScheme.onBackground),
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          dividerTheme: DividerThemeData(
            color: colorScheme.onBackground.withOpacity(.2),
            thickness: .3,
          ),
          dividerColor: colorScheme.onBackground.withOpacity(.2),
          extensions: [
            TextFieldTheme(
                hintColor: AppColorScheme.instance.hintColor,
                textColor: textTheme.labelSmall!.color!,
                titleColor: textTheme.labelSmall!.color!,
                errorTextColor: AppColorScheme.instance.red,
                backgroundColor: AppColorScheme.instance.chipBackgroundColor,
                borderColor: AppColorScheme.instance.textFieldBorderColor),
          ]);
}

class _ProLightTheme implements _AppTheme {
  @override
  ColorScheme get colorScheme => ColorScheme.light(
        background: AppColorScheme.instance.white,
        onBackground: AppColorScheme.instance.black,
        brightness: Brightness.light,
        onPrimary: AppColorScheme.instance.white,
        primary: AppColorScheme.instance.gold,
      );

  @override
  TextTheme get textTheme => TextThemeLight.instance.theme;

  ThemeData get themeData => ThemeData(
          colorScheme: colorScheme,
          textTheme: textTheme,
          fontFamily: ApplicationConstants.instance.fontFamily,
          scaffoldBackgroundColor: colorScheme.background,
          primaryColor: colorScheme.primary,
          iconTheme: IconThemeData(color: colorScheme.onBackground),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: textTheme.labelSmall,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: colorScheme.background.withOpacity(.9),
            selectedItemColor: colorScheme.primary,
            unselectedItemColor:
                AppColorScheme.instance.grayVeryDark.withOpacity(.5),
          ),
          tabBarTheme: TabBarTheme(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            indicatorColor: colorScheme.primary,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          chipTheme: ChipThemeData(
            brightness: Brightness.light,
            selectedColor: colorScheme.primary,
            backgroundColor: colorScheme.background,
            side: BorderSide(color: colorScheme.primary, width: .7),
            labelStyle: TextStyle(
                fontFamily: ApplicationConstants.instance.fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: colorScheme.primary),
          ),
          dividerTheme: DividerThemeData(
            color: colorScheme.onBackground.withOpacity(.2),
            thickness: .3,
          ),
          dividerColor: colorScheme.onBackground.withOpacity(.2),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
          ),
          popupMenuTheme: PopupMenuThemeData(
              color: colorScheme.background.withOpacity(.1),
              surfaceTintColor: Colors.amber),
          progressIndicatorTheme: ProgressIndicatorThemeData(
              color: colorScheme.primary,
              refreshBackgroundColor: colorScheme.background),
          drawerTheme: DrawerThemeData(
              elevation: 0,
              shadowColor: colorScheme.onBackground.withOpacity(.5),
              backgroundColor: colorScheme.background,
              surfaceTintColor: colorScheme.onBackground),
          appBarTheme: AppBarTheme(
            backgroundColor: colorScheme.background,
            iconTheme: IconThemeData(color: colorScheme.onBackground),
            systemOverlayStyle: SystemUiOverlayStyle.light,
          ),
          extensions: [
            TextFieldTheme(
                hintColor: AppColorScheme.instance.hintColor,
                textColor: textTheme.labelSmall!.color!,
                titleColor: textTheme.labelSmall!.color!,
                errorTextColor: AppColorScheme.instance.red,
                backgroundColor:
                    AppColorScheme.instance.textFieldBackgroundColor,
                borderColor: AppColorScheme.instance.textFieldBorderColor),
          ]);
}
