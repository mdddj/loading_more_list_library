// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IndicatorStatusModel {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorStatusModel);
}


@override
int get hashCode => runtimeType.hashCode;



}

/// @nodoc
class $IndicatorStatusModelCopyWith<$Res>  {
$IndicatorStatusModelCopyWith(IndicatorStatusModel _, $Res Function(IndicatorStatusModel) __);
}


/// Adds pattern-matching-related methods to [IndicatorStatusModel].
extension IndicatorStatusModelPatterns on IndicatorStatusModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IndicatorStatusModelWithNone value)?  none,TResult Function( IndicatorStatusModelWithEmpty value)?  empty,TResult Function( IndicatorStatusModelWithLoadingMoreBusying value)?  loadingMoreBusying,TResult Function( IndicatorStatusModelWithFullScreenBusying value)?  fullScreenBusying,TResult Function( IndicatorStatusModelWithError value)?  error,TResult Function( IndicatorStatusModelWithFullScreenError value)?  fullScreenError,TResult Function( IndicatorStatusModelWithNoMoreLoad value)?  noMoreLoad,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IndicatorStatusModelWithNone() when none != null:
return none(_that);case IndicatorStatusModelWithEmpty() when empty != null:
return empty(_that);case IndicatorStatusModelWithLoadingMoreBusying() when loadingMoreBusying != null:
return loadingMoreBusying(_that);case IndicatorStatusModelWithFullScreenBusying() when fullScreenBusying != null:
return fullScreenBusying(_that);case IndicatorStatusModelWithError() when error != null:
return error(_that);case IndicatorStatusModelWithFullScreenError() when fullScreenError != null:
return fullScreenError(_that);case IndicatorStatusModelWithNoMoreLoad() when noMoreLoad != null:
return noMoreLoad(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IndicatorStatusModelWithNone value)  none,required TResult Function( IndicatorStatusModelWithEmpty value)  empty,required TResult Function( IndicatorStatusModelWithLoadingMoreBusying value)  loadingMoreBusying,required TResult Function( IndicatorStatusModelWithFullScreenBusying value)  fullScreenBusying,required TResult Function( IndicatorStatusModelWithError value)  error,required TResult Function( IndicatorStatusModelWithFullScreenError value)  fullScreenError,required TResult Function( IndicatorStatusModelWithNoMoreLoad value)  noMoreLoad,}){
final _that = this;
switch (_that) {
case IndicatorStatusModelWithNone():
return none(_that);case IndicatorStatusModelWithEmpty():
return empty(_that);case IndicatorStatusModelWithLoadingMoreBusying():
return loadingMoreBusying(_that);case IndicatorStatusModelWithFullScreenBusying():
return fullScreenBusying(_that);case IndicatorStatusModelWithError():
return error(_that);case IndicatorStatusModelWithFullScreenError():
return fullScreenError(_that);case IndicatorStatusModelWithNoMoreLoad():
return noMoreLoad(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IndicatorStatusModelWithNone value)?  none,TResult? Function( IndicatorStatusModelWithEmpty value)?  empty,TResult? Function( IndicatorStatusModelWithLoadingMoreBusying value)?  loadingMoreBusying,TResult? Function( IndicatorStatusModelWithFullScreenBusying value)?  fullScreenBusying,TResult? Function( IndicatorStatusModelWithError value)?  error,TResult? Function( IndicatorStatusModelWithFullScreenError value)?  fullScreenError,TResult? Function( IndicatorStatusModelWithNoMoreLoad value)?  noMoreLoad,}){
final _that = this;
switch (_that) {
case IndicatorStatusModelWithNone() when none != null:
return none(_that);case IndicatorStatusModelWithEmpty() when empty != null:
return empty(_that);case IndicatorStatusModelWithLoadingMoreBusying() when loadingMoreBusying != null:
return loadingMoreBusying(_that);case IndicatorStatusModelWithFullScreenBusying() when fullScreenBusying != null:
return fullScreenBusying(_that);case IndicatorStatusModelWithError() when error != null:
return error(_that);case IndicatorStatusModelWithFullScreenError() when fullScreenError != null:
return fullScreenError(_that);case IndicatorStatusModelWithNoMoreLoad() when noMoreLoad != null:
return noMoreLoad(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function(@_igjson  RefreshBase refreshBase)?  empty,TResult Function()?  loadingMoreBusying,TResult Function()?  fullScreenBusying,TResult Function(@_igjson  Object? error, @_igjson  StackTrace? stackTrace, @_igjson  RefreshBase refreshBase)?  error,TResult Function(@_igjson  Object? error, @_igjson  StackTrace? stackTrace, @_igjson  RefreshBase refreshBase)?  fullScreenError,TResult Function()?  noMoreLoad,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IndicatorStatusModelWithNone() when none != null:
return none();case IndicatorStatusModelWithEmpty() when empty != null:
return empty(_that.refreshBase);case IndicatorStatusModelWithLoadingMoreBusying() when loadingMoreBusying != null:
return loadingMoreBusying();case IndicatorStatusModelWithFullScreenBusying() when fullScreenBusying != null:
return fullScreenBusying();case IndicatorStatusModelWithError() when error != null:
return error(_that.error,_that.stackTrace,_that.refreshBase);case IndicatorStatusModelWithFullScreenError() when fullScreenError != null:
return fullScreenError(_that.error,_that.stackTrace,_that.refreshBase);case IndicatorStatusModelWithNoMoreLoad() when noMoreLoad != null:
return noMoreLoad();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function(@_igjson  RefreshBase refreshBase)  empty,required TResult Function()  loadingMoreBusying,required TResult Function()  fullScreenBusying,required TResult Function(@_igjson  Object? error, @_igjson  StackTrace? stackTrace, @_igjson  RefreshBase refreshBase)  error,required TResult Function(@_igjson  Object? error, @_igjson  StackTrace? stackTrace, @_igjson  RefreshBase refreshBase)  fullScreenError,required TResult Function()  noMoreLoad,}) {final _that = this;
switch (_that) {
case IndicatorStatusModelWithNone():
return none();case IndicatorStatusModelWithEmpty():
return empty(_that.refreshBase);case IndicatorStatusModelWithLoadingMoreBusying():
return loadingMoreBusying();case IndicatorStatusModelWithFullScreenBusying():
return fullScreenBusying();case IndicatorStatusModelWithError():
return error(_that.error,_that.stackTrace,_that.refreshBase);case IndicatorStatusModelWithFullScreenError():
return fullScreenError(_that.error,_that.stackTrace,_that.refreshBase);case IndicatorStatusModelWithNoMoreLoad():
return noMoreLoad();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function(@_igjson  RefreshBase refreshBase)?  empty,TResult? Function()?  loadingMoreBusying,TResult? Function()?  fullScreenBusying,TResult? Function(@_igjson  Object? error, @_igjson  StackTrace? stackTrace, @_igjson  RefreshBase refreshBase)?  error,TResult? Function(@_igjson  Object? error, @_igjson  StackTrace? stackTrace, @_igjson  RefreshBase refreshBase)?  fullScreenError,TResult? Function()?  noMoreLoad,}) {final _that = this;
switch (_that) {
case IndicatorStatusModelWithNone() when none != null:
return none();case IndicatorStatusModelWithEmpty() when empty != null:
return empty(_that.refreshBase);case IndicatorStatusModelWithLoadingMoreBusying() when loadingMoreBusying != null:
return loadingMoreBusying();case IndicatorStatusModelWithFullScreenBusying() when fullScreenBusying != null:
return fullScreenBusying();case IndicatorStatusModelWithError() when error != null:
return error(_that.error,_that.stackTrace,_that.refreshBase);case IndicatorStatusModelWithFullScreenError() when fullScreenError != null:
return fullScreenError(_that.error,_that.stackTrace,_that.refreshBase);case IndicatorStatusModelWithNoMoreLoad() when noMoreLoad != null:
return noMoreLoad();case _:
  return null;

}
}

}

/// @nodoc


class IndicatorStatusModelWithNone extends IndicatorStatusModel {
   IndicatorStatusModelWithNone(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorStatusModelWithNone);
}


@override
int get hashCode => runtimeType.hashCode;



}




/// @nodoc


class IndicatorStatusModelWithEmpty extends IndicatorStatusModel {
   IndicatorStatusModelWithEmpty(@_igjson this.refreshBase): super._();
  

@_igjson final  RefreshBase refreshBase;

/// Create a copy of IndicatorStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndicatorStatusModelWithEmptyCopyWith<IndicatorStatusModelWithEmpty> get copyWith => _$IndicatorStatusModelWithEmptyCopyWithImpl<IndicatorStatusModelWithEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorStatusModelWithEmpty&&(identical(other.refreshBase, refreshBase) || other.refreshBase == refreshBase));
}


@override
int get hashCode => Object.hash(runtimeType,refreshBase);



}

/// @nodoc
abstract mixin class $IndicatorStatusModelWithEmptyCopyWith<$Res> implements $IndicatorStatusModelCopyWith<$Res> {
  factory $IndicatorStatusModelWithEmptyCopyWith(IndicatorStatusModelWithEmpty value, $Res Function(IndicatorStatusModelWithEmpty) _then) = _$IndicatorStatusModelWithEmptyCopyWithImpl;
@useResult
$Res call({
@_igjson RefreshBase refreshBase
});




}
/// @nodoc
class _$IndicatorStatusModelWithEmptyCopyWithImpl<$Res>
    implements $IndicatorStatusModelWithEmptyCopyWith<$Res> {
  _$IndicatorStatusModelWithEmptyCopyWithImpl(this._self, this._then);

  final IndicatorStatusModelWithEmpty _self;
  final $Res Function(IndicatorStatusModelWithEmpty) _then;

/// Create a copy of IndicatorStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? refreshBase = null,}) {
  return _then(IndicatorStatusModelWithEmpty(
null == refreshBase ? _self.refreshBase : refreshBase // ignore: cast_nullable_to_non_nullable
as RefreshBase,
  ));
}


}

/// @nodoc


class IndicatorStatusModelWithLoadingMoreBusying extends IndicatorStatusModel {
   IndicatorStatusModelWithLoadingMoreBusying(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorStatusModelWithLoadingMoreBusying);
}


@override
int get hashCode => runtimeType.hashCode;



}




/// @nodoc


class IndicatorStatusModelWithFullScreenBusying extends IndicatorStatusModel {
   IndicatorStatusModelWithFullScreenBusying(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorStatusModelWithFullScreenBusying);
}


@override
int get hashCode => runtimeType.hashCode;



}




/// @nodoc


class IndicatorStatusModelWithError extends IndicatorStatusModel {
   IndicatorStatusModelWithError({@_igjson this.error, @_igjson this.stackTrace, @_igjson required this.refreshBase}): super._();
  

@_igjson final  Object? error;
@_igjson final  StackTrace? stackTrace;
@_igjson final  RefreshBase refreshBase;

/// Create a copy of IndicatorStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndicatorStatusModelWithErrorCopyWith<IndicatorStatusModelWithError> get copyWith => _$IndicatorStatusModelWithErrorCopyWithImpl<IndicatorStatusModelWithError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorStatusModelWithError&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace)&&(identical(other.refreshBase, refreshBase) || other.refreshBase == refreshBase));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace,refreshBase);



}

/// @nodoc
abstract mixin class $IndicatorStatusModelWithErrorCopyWith<$Res> implements $IndicatorStatusModelCopyWith<$Res> {
  factory $IndicatorStatusModelWithErrorCopyWith(IndicatorStatusModelWithError value, $Res Function(IndicatorStatusModelWithError) _then) = _$IndicatorStatusModelWithErrorCopyWithImpl;
@useResult
$Res call({
@_igjson Object? error,@_igjson StackTrace? stackTrace,@_igjson RefreshBase refreshBase
});




}
/// @nodoc
class _$IndicatorStatusModelWithErrorCopyWithImpl<$Res>
    implements $IndicatorStatusModelWithErrorCopyWith<$Res> {
  _$IndicatorStatusModelWithErrorCopyWithImpl(this._self, this._then);

  final IndicatorStatusModelWithError _self;
  final $Res Function(IndicatorStatusModelWithError) _then;

/// Create a copy of IndicatorStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? stackTrace = freezed,Object? refreshBase = null,}) {
  return _then(IndicatorStatusModelWithError(
error: freezed == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,refreshBase: null == refreshBase ? _self.refreshBase : refreshBase // ignore: cast_nullable_to_non_nullable
as RefreshBase,
  ));
}


}

/// @nodoc


class IndicatorStatusModelWithFullScreenError extends IndicatorStatusModel {
   IndicatorStatusModelWithFullScreenError({@_igjson this.error, @_igjson this.stackTrace, @_igjson required this.refreshBase}): super._();
  

@_igjson final  Object? error;
@_igjson final  StackTrace? stackTrace;
@_igjson final  RefreshBase refreshBase;

/// Create a copy of IndicatorStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndicatorStatusModelWithFullScreenErrorCopyWith<IndicatorStatusModelWithFullScreenError> get copyWith => _$IndicatorStatusModelWithFullScreenErrorCopyWithImpl<IndicatorStatusModelWithFullScreenError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorStatusModelWithFullScreenError&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace)&&(identical(other.refreshBase, refreshBase) || other.refreshBase == refreshBase));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace,refreshBase);



}

/// @nodoc
abstract mixin class $IndicatorStatusModelWithFullScreenErrorCopyWith<$Res> implements $IndicatorStatusModelCopyWith<$Res> {
  factory $IndicatorStatusModelWithFullScreenErrorCopyWith(IndicatorStatusModelWithFullScreenError value, $Res Function(IndicatorStatusModelWithFullScreenError) _then) = _$IndicatorStatusModelWithFullScreenErrorCopyWithImpl;
@useResult
$Res call({
@_igjson Object? error,@_igjson StackTrace? stackTrace,@_igjson RefreshBase refreshBase
});




}
/// @nodoc
class _$IndicatorStatusModelWithFullScreenErrorCopyWithImpl<$Res>
    implements $IndicatorStatusModelWithFullScreenErrorCopyWith<$Res> {
  _$IndicatorStatusModelWithFullScreenErrorCopyWithImpl(this._self, this._then);

  final IndicatorStatusModelWithFullScreenError _self;
  final $Res Function(IndicatorStatusModelWithFullScreenError) _then;

/// Create a copy of IndicatorStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? stackTrace = freezed,Object? refreshBase = null,}) {
  return _then(IndicatorStatusModelWithFullScreenError(
error: freezed == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,refreshBase: null == refreshBase ? _self.refreshBase : refreshBase // ignore: cast_nullable_to_non_nullable
as RefreshBase,
  ));
}


}

/// @nodoc


class IndicatorStatusModelWithNoMoreLoad extends IndicatorStatusModel {
   IndicatorStatusModelWithNoMoreLoad(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorStatusModelWithNoMoreLoad);
}


@override
int get hashCode => runtimeType.hashCode;



}




// dart format on
