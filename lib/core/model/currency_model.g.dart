// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyModelImpl _$$CurrencyModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyModelImpl(
      code: json['code'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      flag: json['flag'] as String,
      number: (json['number'] as num).toInt(),
      decimalDigits: (json['decimalDigits'] as num).toInt(),
      namePlural: json['namePlural'] as String,
      symbolOnLeft: json['symbolOnLeft'] as bool,
      decimalSeparator: json['decimalSeparator'] as String,
      thousandsSeparator: json['thousandsSeparator'] as String,
      spaceBetweenAmountAndSymbol: json['spaceBetweenAmountAndSymbol'] as bool,
    );

Map<String, dynamic> _$$CurrencyModelImplToJson(_$CurrencyModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'symbol': instance.symbol,
      'flag': instance.flag,
      'number': instance.number,
      'decimalDigits': instance.decimalDigits,
      'namePlural': instance.namePlural,
      'symbolOnLeft': instance.symbolOnLeft,
      'decimalSeparator': instance.decimalSeparator,
      'thousandsSeparator': instance.thousandsSeparator,
      'spaceBetweenAmountAndSymbol': instance.spaceBetweenAmountAndSymbol,
    };
