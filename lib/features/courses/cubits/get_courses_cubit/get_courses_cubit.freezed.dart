// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_courses_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetCoursesState {

 SubmissionStatus get status; PaginationModel<CourseModel>? get data; int get badgeCount; String? get errorMessage;
/// Create a copy of GetCoursesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCoursesStateCopyWith<GetCoursesState> get copyWith => _$GetCoursesStateCopyWithImpl<GetCoursesState>(this as GetCoursesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCoursesState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.badgeCount, badgeCount) || other.badgeCount == badgeCount)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,badgeCount,errorMessage);

@override
String toString() {
  return 'GetCoursesState(status: $status, data: $data, badgeCount: $badgeCount, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $GetCoursesStateCopyWith<$Res>  {
  factory $GetCoursesStateCopyWith(GetCoursesState value, $Res Function(GetCoursesState) _then) = _$GetCoursesStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, PaginationModel<CourseModel>? data, int badgeCount, String? errorMessage
});




}
/// @nodoc
class _$GetCoursesStateCopyWithImpl<$Res>
    implements $GetCoursesStateCopyWith<$Res> {
  _$GetCoursesStateCopyWithImpl(this._self, this._then);

  final GetCoursesState _self;
  final $Res Function(GetCoursesState) _then;

/// Create a copy of GetCoursesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? badgeCount = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaginationModel<CourseModel>?,badgeCount: null == badgeCount ? _self.badgeCount : badgeCount // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetCoursesState].
extension GetCoursesStatePatterns on GetCoursesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTeacherState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTeacherState value)  $default,){
final _that = this;
switch (_that) {
case _CreateTeacherState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTeacherState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  PaginationModel<CourseModel>? data,  int badgeCount,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.badgeCount,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  PaginationModel<CourseModel>? data,  int badgeCount,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState():
return $default(_that.status,_that.data,_that.badgeCount,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  PaginationModel<CourseModel>? data,  int badgeCount,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.badgeCount,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeacherState implements GetCoursesState {
  const _CreateTeacherState({this.status = SubmissionStatus.initial, this.data, this.badgeCount = 0, this.errorMessage});
  

@override@JsonKey() final  SubmissionStatus status;
@override final  PaginationModel<CourseModel>? data;
@override@JsonKey() final  int badgeCount;
@override final  String? errorMessage;

/// Create a copy of GetCoursesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeacherStateCopyWith<_CreateTeacherState> get copyWith => __$CreateTeacherStateCopyWithImpl<_CreateTeacherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeacherState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.badgeCount, badgeCount) || other.badgeCount == badgeCount)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,badgeCount,errorMessage);

@override
String toString() {
  return 'GetCoursesState(status: $status, data: $data, badgeCount: $badgeCount, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CreateTeacherStateCopyWith<$Res> implements $GetCoursesStateCopyWith<$Res> {
  factory _$CreateTeacherStateCopyWith(_CreateTeacherState value, $Res Function(_CreateTeacherState) _then) = __$CreateTeacherStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, PaginationModel<CourseModel>? data, int badgeCount, String? errorMessage
});




}
/// @nodoc
class __$CreateTeacherStateCopyWithImpl<$Res>
    implements _$CreateTeacherStateCopyWith<$Res> {
  __$CreateTeacherStateCopyWithImpl(this._self, this._then);

  final _CreateTeacherState _self;
  final $Res Function(_CreateTeacherState) _then;

/// Create a copy of GetCoursesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? badgeCount = null,Object? errorMessage = freezed,}) {
  return _then(_CreateTeacherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaginationModel<CourseModel>?,badgeCount: null == badgeCount ? _self.badgeCount : badgeCount // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
