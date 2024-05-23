import 'package:currency_converter/core/utils/enums/text_style/text_style_enum.dart';
import 'package:currency_converter/core/utils/extensions/context_extension.dart';
import 'package:currency_converter/core/widget/text_widget.dart';
import 'package:currency_converter/feature/views/home_view/home_view_controller.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedCurrencyCard extends ConsumerWidget {
  const SelectedCurrencyCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeViewController);
    final controllerNotifier = ref.watch(homeViewController.notifier);
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        showCurrencyPicker(
          context: context,
          showFlag: true,
          showSearchField: true,
          showCurrencyName: true,
          showCurrencyCode: true,
          favorite: [],
          onSelect: (Currency currency) {
            controllerNotifier.changeSelectedCurrency(currency);
            controllerNotifier.getCurrencyRate();
          },
        );
      },
      child: Row(
        children: [
          CurrencyConverterTextWidget(
            text: controllerNotifier.currencyToEmoji(
              controller.selectedCurrency.flag ?? "",
            ),
            widgetType: CurrencyConverterTextStyleEnum.s25w900,
          ),
          SizedBox(
            width: context.normalValue,
          ),
          Padding(
            padding: context.paddingMediumRight * 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CurrencyConverterTextWidget(
                  text: controller.selectedCurrency.code,
                  widgetType: CurrencyConverterTextStyleEnum.s15w600,
                ),
                SizedBox(
                  height: context.lowValue,
                ),
                SizedBox(
                  width: context.width * 0.3,
                  child: CurrencyConverterTextWidget(
                      overflow: TextOverflow.ellipsis,
                      text: controller.selectedCurrency.name,
                      widgetType: CurrencyConverterTextStyleEnum.s14w400),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.colors.onBackground,
                ),
                borderRadius: context.borderRadiusMedium,
              ),
              child: Padding(
                padding: context.paddingLowHorizontal,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 7,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            counter: SizedBox.shrink()),
                        controller: controller.currencyTextController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onChanged: (value) {
                          controllerNotifier.changeCurrencyValue(
                              double.parse(value == "" ? "1" : value));
                        },
                      ),
                    ),
                    CurrencyConverterTextWidget(
                        text: controller.selectedCurrency.symbol,
                        widgetType: CurrencyConverterTextStyleEnum.s16w500)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
