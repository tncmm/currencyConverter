import 'dart:convert';

import 'package:currency_converter/core/widget/snack_bar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../../../core/provider/snack_bar_provider.dart';

final currencyService = Provider((ref) => CurrencyService(ref));

class CurrencyService {
  Ref ref;
  CurrencyService(this.ref);

  Future<dynamic> getCurrency(
      String targetCurrency, String baseCurrency) async {
    try {
      var url = Uri.parse(
          "https://api.freecurrencyapi.com/v1/latest?apikey=fca_live_1hDsIU4bIfUOiIOARgSs64QTrGafCKYLMUQCTzyF&currencies=$targetCurrency&base_currency=$baseCurrency");
      final http.Response response =
          await http.get(url).timeout(const Duration(seconds: 30));
      if (response.statusCode.toString().startsWith("2")) {
        return jsonDecode(response.body)["data"];
      } else {
        ref.read(snackBarProvider.notifier).showSnackBar(
            message: "An Error Occurred", snackBarType: SnackBarType.error);
        return null;
      }
    } catch (e) {
      ref.read(snackBarProvider.notifier).showSnackBar(
          message: "An Error Occurred", snackBarType: SnackBarType.error);
      return null;
    }
  }
}
