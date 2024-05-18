import 'package:currency_converter/core/model/currency_model.dart';
import 'package:currency_converter/core/provider/theme_provider.dart';
import 'package:currency_converter/core/utils/enums/page_state/page_state_enum.dart';
import 'package:currency_converter/core/utils/enums/text_style/text_style_enum.dart';
import 'package:currency_converter/core/utils/extensions/context_extension.dart';
import 'package:currency_converter/core/widget/text_widget.dart';
import 'package:currency_converter/core/widget/yes_no_bottom_sheet_widget.dart';
import 'package:currency_converter/feature/views/home_view/home_view_controller.dart';
import 'package:currency_converter/feature/views/home_view/widget/currency_card_widget.dart';
import 'package:currency_converter/feature/views/home_view/widget/selected_currency_card_widget.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(homeViewController);
    final controllerNotifier = ref.watch(homeViewController.notifier);
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        title: const CurrencyConverterTextWidget(
          text: "Currency Converter",
          widgetType: CurrencyConverterTextStyleEnum.s16w600,
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: context.paddingLow,
            child: GestureDetector(
              onTap: () {
                ref.read(themeProvider.notifier).toggleTheme();
              },
              child: ref.read(themeProvider.notifier).isDarkTheme
                  ? const Icon(Icons.sunny)
                  : const Icon(Icons.nightlight),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CurrencyConverterTextWidget(
              text: "Your Selected Currency",
              widgetType: CurrencyConverterTextStyleEnum.s16w600,
            ),
            SizedBox(
              height: context.lowValue,
            ),
            const SelectedCurrencyCard(),
            const Divider(
              thickness: 1.2,
            ),
            const CurrencyConverterTextWidget(
              text: "Currency",
              widgetType: CurrencyConverterTextStyleEnum.s16w600,
            ),
            Expanded(
              child: RefreshIndicator(
                color: context.colors.onBackground,
                onRefresh: () async {
                  controllerNotifier.getCurrencyRate();
                },
                child: ListView.builder(
                  itemCount: controller.pageState == PageStateEnum.SUCCESS &&
                          controller.currencyList.isNotEmpty
                      ? controller.currencyList.length
                      : 1,
                  itemBuilder: ((context, index) {
                    if (controller.pageState == PageStateEnum.SUCCESS) {
                      if (controller.currencyList.isNotEmpty) {
                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onLongPress: () async {
                            bool? isTrue = await showModalBottomSheet(
                              backgroundColor: context.colors.background,
                              context: context,
                              constraints: BoxConstraints(
                                  minHeight: context.height * 0.3,
                                  maxHeight: context.height * 0.3),
                              builder: (BuildContext context) {
                                return const YesNoBottomSheetWidget(
                                    title:
                                        "Do you want to remove this currency?");
                              },
                            );
                            if (isTrue != null && isTrue) {
                              controllerNotifier.removeCurrency(index);
                            }
                          },
                          child: Padding(
                            padding: context.paddingLowVertical,
                            child: CurrencyCard(
                              code: controller.currencyList[index].code,
                              flag: controller.currencyList[index].flag,
                              name: controller.currencyList[index].name,
                              value: controllerNotifier.calculateCurrencyValue(
                                  controller.currencyList[index].code),
                              symbol: controller.currencyList[index].symbol,
                            ),
                          ),
                        );
                      } else {
                        return Center(
                          child: Padding(
                            padding: context.paddingNormal +
                                context.paddingNormalTop * 2,
                            child: const CurrencyConverterTextWidget(
                                text: "Please add new currency",
                                widgetType:
                                    CurrencyConverterTextStyleEnum.s16w500),
                          ),
                        );
                      }
                    } else if (controller.pageState == PageStateEnum.ERROR) {
                      return const CurrencyConverterTextWidget(
                          text: "An Error Occurred",
                          widgetType: CurrencyConverterTextStyleEnum.s16w500);
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
                ),
              ),
            ),
            Padding(
              padding: context.paddingNormal,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    showCurrencyPicker(
                      context: context,
                      showFlag: true,
                      showSearchField: true,
                      showCurrencyName: true,
                      showCurrencyCode: true,
                      favorite: [],
                      onSelect: (Currency currency) {
                        controllerNotifier
                            .addCurrency(CurrencyModel(
                                code: currency.code,
                                name: currency.name,
                                symbol: currency.symbol,
                                flag: currency.flag ?? "",
                                number: currency.number,
                                decimalDigits: currency.decimalDigits,
                                namePlural: currency.namePlural,
                                symbolOnLeft: currency.symbolOnLeft,
                                decimalSeparator: currency.decimalSeparator,
                                thousandsSeparator: currency.thousandsSeparator,
                                spaceBetweenAmountAndSymbol:
                                    currency.spaceBetweenAmountAndSymbol))
                            .whenComplete(() {
                          controllerNotifier.getCurrencyRate();
                        });
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: context.borderRadiusNormal,
                    ),
                    child: Padding(
                      padding: context.paddingLow,
                      child: const CurrencyConverterTextWidget(
                        text: "Add new currency",
                        widgetType: CurrencyConverterTextStyleEnum.s16w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
