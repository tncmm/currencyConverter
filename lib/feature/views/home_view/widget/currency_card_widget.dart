import 'package:currency_converter/core/utils/enums/text_style/text_style_enum.dart';
import 'package:currency_converter/core/utils/extensions/context_extension.dart';
import 'package:currency_converter/core/widget/text_widget.dart';
import 'package:currency_converter/feature/views/home_view/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyCard extends ConsumerWidget {
  final String name;
  final String code;
  final String flag;
  final String value;
  final String symbol;
  const CurrencyCard({
    super.key,
    required this.code,
    required this.flag,
    required this.name,
    required this.value,
    required this.symbol,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controllerNotifier = ref.watch(homeViewController.notifier);
    return Row(
      children: [
        CurrencyConverterTextWidget(
          text: controllerNotifier.currencyToEmoji(
            flag,
          ),
          widgetType: CurrencyConverterTextStyleEnum.s25w900,
        ),
        SizedBox(
          width: context.normalValue,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurrencyConverterTextWidget(
              text: code,
              widgetType: CurrencyConverterTextStyleEnum.s15w600,
            ),
            SizedBox(
              height: context.lowValue,
            ),
            CurrencyConverterTextWidget(
                text: name, widgetType: CurrencyConverterTextStyleEnum.s14w400)
          ],
        ),
        const Spacer(),
        Row(
          children: [
            CurrencyConverterTextWidget(
              text: value,
              widgetType: CurrencyConverterTextStyleEnum.s16w600,
              color: context.colors.primary,
            ),
            SizedBox(
              width: context.lowValue,
            ),
            CurrencyConverterTextWidget(
              text: symbol,
              color: context.appColors.green,
              widgetType: CurrencyConverterTextStyleEnum.s16w500,
            )
          ],
        ),
      ],
    );
  }
}
