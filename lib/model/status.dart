// ignore_for_file: invalid_annotation_target, always_specify_types

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../loading_more_list_library_fast.dart';


part 'status.freezed.dart';

///状态
const JsonKey _igjson = JsonKey(
    fromJson: null, toJson: null, includeToJson: false, includeFromJson: false);

extension IndicatorStatusModelEx on IndicatorStatusModel {
  bool get isFullLoading => this is IndicatorStatusModelWithFullScreenBusying;
  bool get isLoadingMore => this is IndicatorStatusModelWithLoadingMoreBusying;
  bool get isEmpty => this is IndicatorStatusModelWithEmpty;
}

@freezed
sealed class IndicatorStatusModel with _$IndicatorStatusModel {
  const IndicatorStatusModel._();

  factory IndicatorStatusModel.none() = IndicatorStatusModelWithNone;

  ///注意要处理 sliver组件
  factory IndicatorStatusModel.empty(@_igjson RefreshBase refreshBase) =
      IndicatorStatusModelWithEmpty;

  factory IndicatorStatusModel.loadingMoreBusying() =
      IndicatorStatusModelWithLoadingMoreBusying;

  ///注意要处理 sliver组件
  factory IndicatorStatusModel.fullScreenBusying() =
      IndicatorStatusModelWithFullScreenBusying;

  factory IndicatorStatusModel.error(
          {@_igjson Object? error,
          @_igjson StackTrace? stackTrace,
          @_igjson required RefreshBase refreshBase}) =
      IndicatorStatusModelWithError;

  ///注意要处理 sliver 组件
  factory IndicatorStatusModel.fullScreenError(
          {@_igjson Object? error,
          @_igjson StackTrace? stackTrace,
          @_igjson required RefreshBase refreshBase}) =
      IndicatorStatusModelWithFullScreenError;

  factory IndicatorStatusModel.noMoreLoad() =
      IndicatorStatusModelWithNoMoreLoad;

  @override
  String toString() {
    return jsonEncode(this);
  }
}
