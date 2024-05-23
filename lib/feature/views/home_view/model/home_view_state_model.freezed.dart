// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeViewStateModel {
  TextEditingController get currencyTextController =>
      throw _privateConstructorUsedError;
  double get currencyValue => throw _privateConstructorUsedError;
  List<CurrencyModel> get currencyList => throw _privateConstructorUsedError;
  Currency get selectedCurrency => throw _privateConstructorUsedError;
  dynamic get currencyData => throw _privateConstructorUsedError;
  PageStateEnum get pageState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateModelCopyWith<HomeViewStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateModelCopyWith<$Res> {
  factory $HomeViewStateModelCopyWith(
          HomeViewStateModel value, $Res Function(HomeViewStateModel) then) =
      _$HomeViewStateModelCopyWithImpl<$Res, HomeViewStateModel>;
  @useResult
  $Res call(
      {TextEditingController currencyTextController,
      double currencyValue,
      List<CurrencyModel> currencyList,
      Currency selectedCurrency,
      dynamic currencyData,
      PageStateEnum pageState});
}

/// @nodoc
class _$HomeViewStateModelCopyWithImpl<$Res, $Val extends HomeViewStateModel>
    implements $HomeViewStateModelCopyWith<$Res> {
  _$HomeViewStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyTextController = null,
    Object? currencyValue = null,
    Object? currencyList = null,
    Object? selectedCurrency = null,
    Object? currencyData = freezed,
    Object? pageState = null,
  }) {
    return _then(_value.copyWith(
      currencyTextController: null == currencyTextController
          ? _value.currencyTextController
          : currencyTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      currencyValue: null == currencyValue
          ? _value.currencyValue
          : currencyValue // ignore: cast_nullable_to_non_nullable
              as double,
      currencyList: null == currencyList
          ? _value.currencyList
          : currencyList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      selectedCurrency: null == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as Currency,
      currencyData: freezed == currencyData
          ? _value.currencyData
          : currencyData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageStateEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeViewStateModelImplCopyWith<$Res>
    implements $HomeViewStateModelCopyWith<$Res> {
  factory _$$HomeViewStateModelImplCopyWith(_$HomeViewStateModelImpl value,
          $Res Function(_$HomeViewStateModelImpl) then) =
      __$$HomeViewStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController currencyTextController,
      double currencyValue,
      List<CurrencyModel> currencyList,
      Currency selectedCurrency,
      dynamic currencyData,
      PageStateEnum pageState});
}

/// @nodoc
class __$$HomeViewStateModelImplCopyWithImpl<$Res>
    extends _$HomeViewStateModelCopyWithImpl<$Res, _$HomeViewStateModelImpl>
    implements _$$HomeViewStateModelImplCopyWith<$Res> {
  __$$HomeViewStateModelImplCopyWithImpl(_$HomeViewStateModelImpl _value,
      $Res Function(_$HomeViewStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyTextController = null,
    Object? currencyValue = null,
    Object? currencyList = null,
    Object? selectedCurrency = null,
    Object? currencyData = freezed,
    Object? pageState = null,
  }) {
    return _then(_$HomeViewStateModelImpl(
      currencyTextController: null == currencyTextController
          ? _value.currencyTextController
          : currencyTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      currencyValue: null == currencyValue
          ? _value.currencyValue
          : currencyValue // ignore: cast_nullable_to_non_nullable
              as double,
      currencyList: null == currencyList
          ? _value._currencyList
          : currencyList // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>,
      selectedCurrency: null == selectedCurrency
          ? _value.selectedCurrency
          : selectedCurrency // ignore: cast_nullable_to_non_nullable
              as Currency,
      currencyData: freezed == currencyData
          ? _value.currencyData
          : currencyData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageStateEnum,
    ));
  }
}

/// @nodoc

class _$HomeViewStateModelImpl implements _HomeViewStateModel {
  const _$HomeViewStateModelImpl(
      {required this.currencyTextController,
      this.currencyValue = 1,
      final List<CurrencyModel> currencyList = const [],
      required this.selectedCurrency,
      this.currencyData,
      this.pageState = PageStateEnum.LOADING})
      : _currencyList = currencyList;

  @override
  final TextEditingController currencyTextController;
  @override
  @JsonKey()
  final double currencyValue;
  final List<CurrencyModel> _currencyList;
  @override
  @JsonKey()
  List<CurrencyModel> get currencyList {
    if (_currencyList is EqualUnmodifiableListView) return _currencyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencyList);
  }

  @override
  final Currency selectedCurrency;
  @override
  final dynamic currencyData;
  @override
  @JsonKey()
  final PageStateEnum pageState;

  @override
  String toString() {
    return 'HomeViewStateModel(currencyTextController: $currencyTextController, currencyValue: $currencyValue, currencyList: $currencyList, selectedCurrency: $selectedCurrency, currencyData: $currencyData, pageState: $pageState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewStateModelImpl &&
            (identical(other.currencyTextController, currencyTextController) ||
                other.currencyTextController == currencyTextController) &&
            (identical(other.currencyValue, currencyValue) ||
                other.currencyValue == currencyValue) &&
            const DeepCollectionEquality()
                .equals(other._currencyList, _currencyList) &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                other.selectedCurrency == selectedCurrency) &&
            const DeepCollectionEquality()
                .equals(other.currencyData, currencyData) &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currencyTextController,
      currencyValue,
      const DeepCollectionEquality().hash(_currencyList),
      selectedCurrency,
      const DeepCollectionEquality().hash(currencyData),
      pageState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewStateModelImplCopyWith<_$HomeViewStateModelImpl> get copyWith =>
      __$$HomeViewStateModelImplCopyWithImpl<_$HomeViewStateModelImpl>(
          this, _$identity);
}

abstract class _HomeViewStateModel implements HomeViewStateModel {
  const factory _HomeViewStateModel(
      {required final TextEditingController currencyTextController,
      final double currencyValue,
      final List<CurrencyModel> currencyList,
      required final Currency selectedCurrency,
      final dynamic currencyData,
      final PageStateEnum pageState}) = _$HomeViewStateModelImpl;

  @override
  TextEditingController get currencyTextController;
  @override
  double get currencyValue;
  @override
  List<CurrencyModel> get currencyList;
  @override
  Currency get selectedCurrency;
  @override
  dynamic get currencyData;
  @override
  PageStateEnum get pageState;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewStateModelImplCopyWith<_$HomeViewStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
