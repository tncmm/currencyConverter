import 'dart:convert';

import 'package:currency_converter/core/model/currency_model.dart';
import 'package:currency_converter/core/utils/enums/page_state/page_state_enum.dart';
import 'package:currency_converter/feature/views/home_view/model/home_view_state_model.dart';
import 'package:currency_converter/feature/views/home_view/service/currency_service.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final homeViewController =
    StateNotifierProvider<CreateActivityController, HomeViewStateModel>((ref) {
  ref.onDispose(() {});
  return CreateActivityController(ref);
});

class CreateActivityController extends StateNotifier<HomeViewStateModel> {
  CreateActivityController(this.ref)
      : super(
          HomeViewStateModel(
            currencyTextController: TextEditingController(text: "1"),
            selectedCurrency: Currency(
              code: "TRY",
              name: "TRY",
              symbol: "₺",
              flag: "TRY",
              number: 840,
              decimalDigits: 2,
              namePlural: "Turkish Lira",
              symbolOnLeft: true,
              decimalSeparator: ".",
              thousandsSeparator: ",",
              spaceBetweenAmountAndSymbol: false,
            ),
          ),
        ) {
    getLocalCurrencyList();
    getCurrencyRate();
  }
  final Ref ref;

  getLocalCurrencyList() async {
    final List<CurrencyModel> localdata = await getCurrencyList();
    state = state.copyWith(
      currencyList: localdata.isNotEmpty
          ? localdata
          : [
              const CurrencyModel(
                code: "USD",
                name: "United States Dollar",
                symbol: r"$",
                flag: "USD",
                number: 840,
                decimalDigits: 2,
                namePlural: "US dollars",
                symbolOnLeft: true,
                decimalSeparator: ".",
                thousandsSeparator: ",",
                spaceBetweenAmountAndSymbol: false,
              ),
              const CurrencyModel(
                code: "EUR",
                name: "Euro",
                symbol: r"€",
                flag: "EUR",
                number: 978,
                decimalDigits: 2,
                namePlural: "Euros",
                symbolOnLeft: true,
                decimalSeparator: ".",
                thousandsSeparator: ",",
                spaceBetweenAmountAndSymbol: false,
              ),
              const CurrencyModel(
                code: "GBP",
                name: "British Pound",
                symbol: r"£",
                flag: "GBP",
                number: 840,
                decimalDigits: 2,
                namePlural: "British pounds sterling",
                symbolOnLeft: true,
                decimalSeparator: ".",
                thousandsSeparator: ",",
                spaceBetweenAmountAndSymbol: false,
              ),
            ],
    );
  }

  void getCurrencyRate() async {
    state = state.copyWith(pageState: PageStateEnum.LOADING);
    String targetCurrency = List.generate(state.currencyList.length,
        (index) => state.currencyList[index].code).join("%2C");
    dynamic data = await ref
        .read(currencyService)
        .getCurrency(targetCurrency, state.selectedCurrency.code);
    if (data != null) {
      state = state.copyWith(currencyData: data);
      state = state.copyWith(pageState: PageStateEnum.SUCCESS);
    } else {
      state = state.copyWith(pageState: PageStateEnum.ERROR);
    }
  }

  void changePageState(PageStateEnum newPageState) {
    state = state.copyWith(pageState: newPageState);
  }

  String calculateCurrencyValue(String currencyCode) {
    num value = 0;
    value = state.currencyValue * state.currencyData[currencyCode];
    return value.toStringAsFixed(4);
  }

  void changeCurrencyValue(int newValue) {
    state = state.copyWith(currencyValue: newValue);
  }

  Future<void> addCurrency(CurrencyModel newCurrency) async {
    List<CurrencyModel> currencyListCopy = [...state.currencyList];
    for (int i = 0; i < currencyListCopy.length; i++) {
      if (state.currencyList[i].code == newCurrency.code) {
        return;
      }
    }
    currencyListCopy.add(newCurrency);
    saveCurrencyList(currencyListCopy);

    state = state.copyWith(currencyList: currencyListCopy);
  }

  String currencyToEmoji(String currency) {
    final String currencyFlag = currency;
    final int firstLetter = currencyFlag.codeUnitAt(0) - 0x41 + 0x1F1E6;
    final int secondLetter = currencyFlag.codeUnitAt(1) - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

  void changeSelectedCurrency(Currency newCurrency) {
    state = state.copyWith(selectedCurrency: newCurrency);
  }

  void removeCurrency(int index) async {
    List<CurrencyModel> currencyListCopy = [...state.currencyList];

    currencyListCopy.removeAt(index);
    saveCurrencyList(currencyListCopy);
    state = state.copyWith(currencyList: currencyListCopy);
  }

  Future<void> saveCurrencyList(List<CurrencyModel> currencies) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> currencyListJson =
        currencies.map((currency) => jsonEncode(currency.toJson())).toList();
    await prefs.setStringList('currencyList', currencyListJson);
  }

  Future<List<CurrencyModel>> getCurrencyList() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? currencyListJson = prefs.getStringList('currencyList');
    if (currencyListJson == null) {
      return [];
    }
    return currencyListJson
        .map((jsonString) => CurrencyModel.fromJson(jsonDecode(jsonString)))
        .toList();
  }
}
