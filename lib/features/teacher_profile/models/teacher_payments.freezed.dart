// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_payments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeacherPayments {

 List<PaymentDetail> get payments;
/// Create a copy of TeacherPayments
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeacherPaymentsCopyWith<TeacherPayments> get copyWith => _$TeacherPaymentsCopyWithImpl<TeacherPayments>(this as TeacherPayments, _$identity);

  /// Serializes this TeacherPayments to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeacherPayments&&const DeepCollectionEquality().equals(other.payments, payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(payments));

@override
String toString() {
  return 'TeacherPayments(payments: $payments)';
}


}

/// @nodoc
abstract mixin class $TeacherPaymentsCopyWith<$Res>  {
  factory $TeacherPaymentsCopyWith(TeacherPayments value, $Res Function(TeacherPayments) _then) = _$TeacherPaymentsCopyWithImpl;
@useResult
$Res call({
 List<PaymentDetail> payments
});




}
/// @nodoc
class _$TeacherPaymentsCopyWithImpl<$Res>
    implements $TeacherPaymentsCopyWith<$Res> {
  _$TeacherPaymentsCopyWithImpl(this._self, this._then);

  final TeacherPayments _self;
  final $Res Function(TeacherPayments) _then;

/// Create a copy of TeacherPayments
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payments = null,}) {
  return _then(_self.copyWith(
payments: null == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentDetail>,
  ));
}

}


/// Adds pattern-matching-related methods to [TeacherPayments].
extension TeacherPaymentsPatterns on TeacherPayments {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeacherPayments value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeacherPayments() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeacherPayments value)  $default,){
final _that = this;
switch (_that) {
case _TeacherPayments():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeacherPayments value)?  $default,){
final _that = this;
switch (_that) {
case _TeacherPayments() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PaymentDetail> payments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeacherPayments() when $default != null:
return $default(_that.payments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PaymentDetail> payments)  $default,) {final _that = this;
switch (_that) {
case _TeacherPayments():
return $default(_that.payments);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PaymentDetail> payments)?  $default,) {final _that = this;
switch (_that) {
case _TeacherPayments() when $default != null:
return $default(_that.payments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeacherPayments implements TeacherPayments {
  const _TeacherPayments({required final  List<PaymentDetail> payments}): _payments = payments;
  factory _TeacherPayments.fromJson(Map<String, dynamic> json) => _$TeacherPaymentsFromJson(json);

 final  List<PaymentDetail> _payments;
@override List<PaymentDetail> get payments {
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payments);
}


/// Create a copy of TeacherPayments
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeacherPaymentsCopyWith<_TeacherPayments> get copyWith => __$TeacherPaymentsCopyWithImpl<_TeacherPayments>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeacherPaymentsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeacherPayments&&const DeepCollectionEquality().equals(other._payments, _payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_payments));

@override
String toString() {
  return 'TeacherPayments(payments: $payments)';
}


}

/// @nodoc
abstract mixin class _$TeacherPaymentsCopyWith<$Res> implements $TeacherPaymentsCopyWith<$Res> {
  factory _$TeacherPaymentsCopyWith(_TeacherPayments value, $Res Function(_TeacherPayments) _then) = __$TeacherPaymentsCopyWithImpl;
@override @useResult
$Res call({
 List<PaymentDetail> payments
});




}
/// @nodoc
class __$TeacherPaymentsCopyWithImpl<$Res>
    implements _$TeacherPaymentsCopyWith<$Res> {
  __$TeacherPaymentsCopyWithImpl(this._self, this._then);

  final _TeacherPayments _self;
  final $Res Function(_TeacherPayments) _then;

/// Create a copy of TeacherPayments
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payments = null,}) {
  return _then(_TeacherPayments(
payments: null == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentDetail>,
  ));
}


}

// dart format on
