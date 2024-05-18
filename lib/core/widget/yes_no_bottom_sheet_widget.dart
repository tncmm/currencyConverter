import 'package:currency_converter/core/utils/enums/text_style/text_style_enum.dart';
import 'package:currency_converter/core/utils/extensions/context_extension.dart';
import 'package:currency_converter/core/widget/text_widget.dart';
import 'package:flutter/material.dart';

class YesNoBottomSheetWidget extends StatelessWidget {
  final String title;
  const YesNoBottomSheetWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Column(
        children: [
          CurrencyConverterTextWidget(
            text: title,
            widgetType: CurrencyConverterTextStyleEnum.s17w600,
            color: context.colors.primary,
          ),
          SizedBox(
            height: context.normalValue * 2,
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.pop(context, true);
            },
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: context.colors.onBackground,
                    ),
                  ),
                  child: Padding(
                    padding: context.paddingLow,
                    child: Icon(
                      Icons.done,
                      color: context.colors.primary,
                    ),
                  ),
                ),
                SizedBox(
                  width: context.normalValue,
                ),
                const CurrencyConverterTextWidget(
                  text: "Yes",
                  widgetType: CurrencyConverterTextStyleEnum.s16w500,
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.normalValue * 1.5,
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.pop(context, false);
            },
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: context.colors.onBackground,
                    ),
                  ),
                  child: Padding(
                    padding: context.paddingLow,
                    child: Icon(
                      Icons.close,
                      color: context.appColors.red,
                    ),
                  ),
                ),
                SizedBox(
                  width: context.normalValue,
                ),
                const CurrencyConverterTextWidget(
                  text: "No",
                  widgetType: CurrencyConverterTextStyleEnum.s16w500,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
