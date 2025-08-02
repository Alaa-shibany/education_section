// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentDetail {

 int get id; int get amount;@JsonKey(name: 'is_paid') bool get isPaid; CourseSession get courseSession;
/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDetailCopyWith<PaymentDetail> get copyWith => _$PaymentDetailCopyWithImpl<PaymentDetail>(this as PaymentDetail, _$identity);

  /// Serializes this PaymentDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.courseSession, courseSession) || other.courseSession == courseSession));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,isPaid,courseSession);

@override
String toString() {
  return 'PaymentDetail(id: $id, amount: $amount, isPaid: $isPaid, courseSession: $courseSession)';
}


}

/// @nodoc
abstract mixin class $PaymentDetailCopyWith<$Res>  {
  factory $PaymentDetailCopyWith(PaymentDetail value, $Res Function(PaymentDetail) _then) = _$PaymentDetailCopyWithImpl;
@useResult
$Res call({
 int id, int amount,@JsonKey(name: 'is_paid') bool isPaid, CourseSession courseSession
});


$CourseSessionCopyWith<$Res> get courseSession;

}
/// @nodoc
class _$PaymentDetailCopyWithImpl<$Res>
    implements $PaymentDetailCopyWith<$Res> {
  _$PaymentDetailCopyWithImpl(this._self, this._then);

  final PaymentDetail _self;
  final $Res Function(PaymentDetail) _then;

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? isPaid = null,Object? courseSession = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,courseSession: null == courseSession ? _self.courseSession : courseSession // ignore: cast_nullable_to_non_nullable
as CourseSession,
  ));
}
/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseSessionCopyWith<$Res> get courseSession {
  
  return $CourseSessionCopyWith<$Res>(_self.courseSession, (value) {
    return _then(_self.copyWith(courseSession: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentDetail].
extension PaymentDetailPatterns on PaymentDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentDetail value)  $default,){
final _that = this;
switch (_that) {
case _PaymentDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentDetail value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int amount, @JsonKey(name: 'is_paid')  bool isPaid,  CourseSession courseSession)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
return $default(_that.id,_that.amount,_that.isPaid,_that.courseSession);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int amount, @JsonKey(name: 'is_paid')  bool isPaid,  CourseSession courseSession)  $default,) {final _that = this;
switch (_that) {
case _PaymentDetail():
return $default(_that.id,_that.amount,_that.isPaid,_that.courseSession);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int amount, @JsonKey(name: 'is_paid')  bool isPaid,  CourseSession courseSession)?  $default,) {final _that = this;
switch (_that) {
case _PaymentDetail() when $default != null:
return $default(_that.id,_that.amount,_that.isPaid,_that.courseSession);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentDetail implements PaymentDetail {
  const _PaymentDetail({required this.id, required this.amount, @JsonKey(name: 'is_paid') required this.isPaid, required this.courseSession});
  factory _PaymentDetail.fromJson(Map<String, dynamic> json) => _$PaymentDetailFromJson(json);

@override final  int id;
@override final  int amount;
@override@JsonKey(name: 'is_paid') final  bool isPaid;
@override final  CourseSession courseSession;

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDetailCopyWith<_PaymentDetail> get copyWith => __$PaymentDetailCopyWithImpl<_PaymentDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.courseSession, courseSession) || other.courseSession == courseSession));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,isPaid,courseSession);

@override
String toString() {
  return 'PaymentDetail(id: $id, amount: $amount, isPaid: $isPaid, courseSession: $courseSession)';
}


}

/// @nodoc
abstract mixin class _$PaymentDetailCopyWith<$Res> implements $PaymentDetailCopyWith<$Res> {
  factory _$PaymentDetailCopyWith(_PaymentDetail value, $Res Function(_PaymentDetail) _then) = __$PaymentDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount,@JsonKey(name: 'is_paid') bool isPaid, CourseSession courseSession
});


@override $CourseSessionCopyWith<$Res> get courseSession;

}
/// @nodoc
class __$PaymentDetailCopyWithImpl<$Res>
    implements _$PaymentDetailCopyWith<$Res> {
  __$PaymentDetailCopyWithImpl(this._self, this._then);

  final _PaymentDetail _self;
  final $Res Function(_PaymentDetail) _then;

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? isPaid = null,Object? courseSession = null,}) {
  return _then(_PaymentDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,courseSession: null == courseSession ? _self.courseSession : courseSession // ignore: cast_nullable_to_non_nullable
as CourseSession,
  ));
}

/// Create a copy of PaymentDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseSessionCopyWith<$Res> get courseSession {
  
  return $CourseSessionCopyWith<$Res>(_self.courseSession, (value) {
    return _then(_self.copyWith(courseSession: value));
  });
}
}

// dart format on
