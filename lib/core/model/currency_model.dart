import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    required String code,
    required String name,
    required String symbol,
    required String flag,
    required int number,
    required int decimalDigits,
    required String namePlural,
    required bool symbolOnLeft,
    required String decimalSeparator,
    required String thousandsSeparator,
    required bool spaceBetweenAmountAndSymbol,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
