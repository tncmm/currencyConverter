// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:currency_converter/core/utils/enums/text_style/text_style_enum.dart';
import 'package:currency_converter/core/utils/extensions/context_extension.dart';
import 'package:currency_converter/core/widget/text_widget.dart';
import 'package:flutter/material.dart';

class TopSnackbarWidget extends StatelessWidget {
  final SnackBarType snackBarType;
  final VoidCallback onPressed;
  final String message;
  final String? title;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final bool iconEnabled;

  const TopSnackbarWidget({
    super.key,
    required this.onPressed,
    required this.message,
    this.title,
    this.backgroundColor,
    this.borderRadius,
    this.iconEnabled = true,
    required this.snackBarType,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: context.paddingNormalHorizontal,
        child: ClipRRect(
          borderRadius: borderRadius ?? context.borderRadiusHigh,
          child: BackdropFilter(
            blendMode: BlendMode.srcATop,
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: onPressed,
              child: Container(
                padding: context.paddingNormalHorizontal +
                    context.paddingLowVertical * 1.2,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: backgroundColor ??
                      context.colors.onBackground.withOpacity(.6),
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    iconEnabled
                        ? Row(
                            children: [
                              getIcon(snackBarType),
                              const SizedBox(width: 16),
                            ],
                          )
                        : const SizedBox(),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Material(
                                  color: Colors.transparent,
                                  child: CurrencyConverterTextWidget(
                                    text: title ?? "Warning",
                                    widgetType:
                                        CurrencyConverterTextStyleEnum.s16w600,
                                    color: theme.colorScheme.background,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              Expanded(
                                child: Material(
                                  color: Colors.transparent,
                                  child: CurrencyConverterTextWidget(
                                    text: message,
                                    widgetType:
                                        CurrencyConverterTextStyleEnum.s14w400,
                                    color: theme.colorScheme.background,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Icon getIcon(SnackBarType type) {
    switch (type) {
      case SnackBarType.info:
        return const Icon(Icons.info, size: 28, color: Colors.amber);
      case SnackBarType.success:
        return const Icon(Icons.check_circle, size: 28, color: Colors.green);
      case SnackBarType.warning:
        return const Icon(Icons.warning, size: 28, color: Colors.orange);
      case SnackBarType.error:
        return const Icon(Icons.error, size: 28, color: Colors.red);

      default:
        return const Icon(
          Icons.info,
          size: 18,
        );
    }
  }
}

enum SnackBarType {
  success,
  error,
  warning,
  info,
}
