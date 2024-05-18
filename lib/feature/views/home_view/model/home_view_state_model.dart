import 'package:currency_converter/core/model/currency_model.dart';
import 'package:currency_converter/core/utils/enums/page_state/page_state_enum.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_state_model.freezed.dart';

@immutable
@freezed
class HomeViewStateModel with _$HomeViewStateModel {
  const factory HomeViewStateModel({
    required TextEditingController currencyTextController,
    @Default(1) int currencyValue,
    @Default([]) List<CurrencyModel> currencyList,
    required Currency selectedCurrency,
    dynamic currencyData,
    @Default(PageStateEnum.LOADING) PageStateEnum pageState,
  }) = _HomeViewStateModel;
}
