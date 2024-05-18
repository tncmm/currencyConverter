// ignore_for_file: unused_element

part of 'text_widget.dart';

abstract class _CurrencyConverterBaseTextWidget extends StatelessWidget {
  final CurrencyConverterTextStyleEnum widgetType;
  final String text;
  final TextDecoration? decoration;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final bool? forceStrutHeight;

  final GestureTapCallback? onTap;
  final int? maxLines;
  final bool? isMoneyCurrency;
  final int? minFontSize;
  final int? maxFontSize;

  final List<InlineSpan>? children;
  const _CurrencyConverterBaseTextWidget({
    this.forceStrutHeight = false,
    required this.text,
    required this.widgetType,
    this.decoration,
    this.color,
    this.textAlign,
    this.overflow,
    this.onTap,
    this.maxLines,
    this.minFontSize,
    this.maxFontSize,
    this.children,
    super.key,
    this.isMoneyCurrency,
  });
}

abstract class _CurrencyConverterTextWidget
    extends _CurrencyConverterBaseTextWidget {
  const _CurrencyConverterTextWidget({
    required super.text,
    required super.widgetType,
    super.decoration,
    super.isMoneyCurrency,
    super.color,
    super.textAlign,
    super.overflow,
    super.onTap,
    super.maxLines,
    super.forceStrutHeight,
  });
}

abstract class _CurrencyConverterRichTextWidget
    extends _CurrencyConverterBaseTextWidget {
  const _CurrencyConverterRichTextWidget({
    required super.text,
    required super.widgetType,
    super.decoration,
    super.color,
    super.textAlign,
    super.overflow,
    super.onTap,
    super.maxLines,
    super.children,
    super.forceStrutHeight,
  });
}

abstract class _CurrencyConverterAutoSizeTextWidget
    extends _CurrencyConverterBaseTextWidget {
  const _CurrencyConverterAutoSizeTextWidget({
    required super.text,
    required super.widgetType,
    super.decoration,
    super.color,
    super.textAlign,
    super.isMoneyCurrency,
    super.overflow,
    super.onTap,
    super.maxLines,
    super.minFontSize,
    super.maxFontSize,
    super.forceStrutHeight,
  });
}
