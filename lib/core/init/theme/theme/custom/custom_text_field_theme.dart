part of '../../app_theme.dart';

@immutable
class TextFieldTheme extends ThemeExtension<TextFieldTheme> {
  const TextFieldTheme({required this.hintColor, required this.textColor, required this.backgroundColor, required this.borderColor, required this.titleColor, required this.errorTextColor});

  final Color hintColor;
  final Color textColor;
  final Color titleColor;
  final Color errorTextColor;
  final Color backgroundColor;
  final Color borderColor;

  @override
  TextFieldTheme copyWith({Color? hintColor, Color? textColor, Color? backgroundColor, Color? borderColor, Color? titleColor, Color? errorTextColor}) {
    return TextFieldTheme(
        hintColor: hintColor ?? this.hintColor,
        textColor: textColor ?? this.textColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        borderColor: borderColor ?? this.borderColor,
        titleColor: titleColor ?? this.titleColor,
        errorTextColor: errorTextColor ?? this.errorTextColor);
  }

  @override
  TextFieldTheme lerp(ThemeExtension<TextFieldTheme>? other, double t) {
    if (other is! TextFieldTheme) {
      return this;
    }
    return TextFieldTheme(
      hintColor: Color.lerp(hintColor, other.hintColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      titleColor: Color.lerp(titleColor, other.titleColor, t)!,
      errorTextColor: Color.lerp(errorTextColor, other.errorTextColor, t)!,
    );
  }

  @override
  String toString() => 'TextFieldTheme('
      'hintColor: $hintColor, '
      'textColor: $textColor, '
      'backgroundColor: $backgroundColor, '
      'borderColor: $borderColor, '
      'titleColor: $titleColor, '
      'errorTextColor: $errorTextColor, '
      ')';
}
