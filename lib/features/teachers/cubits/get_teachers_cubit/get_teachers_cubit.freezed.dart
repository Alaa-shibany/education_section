// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_teachers_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetTeachersState {

 SubmissionStatus get status; PaginationModel<TeacherModel>? get data; String? get errorMessage; TextEditingController? get searchNameController; TextEditingController? get phoneNameController; TextEditingController? get emailNameController; int get badgeCount;
/// Create a copy of GetTeachersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTeachersStateCopyWith<GetTeachersState> get copyWith => _$GetTeachersStateCopyWithImpl<GetTeachersState>(this as GetTeachersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTeachersState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.searchNameController, searchNameController) || other.searchNameController == searchNameController)&&(identical(other.phoneNameController, phoneNameController) || other.phoneNameController == phoneNameController)&&(identical(other.emailNameController, emailNameController) || other.emailNameController == emailNameController)&&(identical(other.badgeCount, badgeCount) || other.badgeCount == badgeCount));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,errorMessage,searchNameController,phoneNameController,emailNameController,badgeCount);

@override
String toString() {
  return 'GetTeachersState(status: $status, data: $data, errorMessage: $errorMessage, searchNameController: $searchNameController, phoneNameController: $phoneNameController, emailNameController: $emailNameController, badgeCount: $badgeCount)';
}


}

/// @nodoc
abstract mixin class $GetTeachersStateCopyWith<$Res>  {
  factory $GetTeachersStateCopyWith(GetTeachersState value, $Res Function(GetTeachersState) _then) = _$GetTeachersStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, PaginationModel<TeacherModel>? data, String? errorMessage, TextEditingController? searchNameController, TextEditingController? phoneNameController, TextEditingController? emailNameController, int badgeCount
});




}
/// @nodoc
class _$GetTeachersStateCopyWithImpl<$Res>
    implements $GetTeachersStateCopyWith<$Res> {
  _$GetTeachersStateCopyWithImpl(this._self, this._then);

  final GetTeachersState _self;
  final $Res Function(GetTeachersState) _then;

/// Create a copy of GetTeachersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? errorMessage = freezed,Object? searchNameController = freezed,Object? phoneNameController = freezed,Object? emailNameController = freezed,Object? badgeCount = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaginationModel<TeacherModel>?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchNameController: freezed == searchNameController ? _self.searchNameController : searchNameController // ignore: cast_nullable_to_non_nullable
as TextEditingController?,phoneNameController: freezed == phoneNameController ? _self.phoneNameController : phoneNameController // ignore: cast_nullable_to_non_nullable
as TextEditingController?,emailNameController: freezed == emailNameController ? _self.emailNameController : emailNameController // ignore: cast_nullable_to_non_nullable
as TextEditingController?,badgeCount: null == badgeCount ? _self.badgeCount : badgeCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTeachersState].
extension GetTeachersStatePatterns on GetTeachersState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  PaginationModel<TeacherModel>? data,  String? errorMessage,  TextEditingController? searchNameController,  TextEditingController? phoneNameController,  TextEditingController? emailNameController,  int badgeCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.errorMessage,_that.searchNameController,_that.phoneNameController,_that.emailNameController,_that.badgeCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  PaginationModel<TeacherModel>? data,  String? errorMessage,  TextEditingController? searchNameController,  TextEditingController? phoneNameController,  TextEditingController? emailNameController,  int badgeCount)  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState():
return $default(_that.status,_that.data,_that.errorMessage,_that.searchNameController,_that.phoneNameController,_that.emailNameController,_that.badgeCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  PaginationModel<TeacherModel>? data,  String? errorMessage,  TextEditingController? searchNameController,  TextEditingController? phoneNameController,  TextEditingController? emailNameController,  int badgeCount)?  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.errorMessage,_that.searchNameController,_that.phoneNameController,_that.emailNameController,_that.badgeCount);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeacherState implements GetTeachersState {
  const _CreateTeacherState({this.status = SubmissionStatus.initial, this.data, this.errorMessage, this.searchNameController, this.phoneNameController, this.emailNameController, this.badgeCount = 0});
  

@override@JsonKey() final  SubmissionStatus status;
@override final  PaginationModel<TeacherModel>? data;
@override final  String? errorMessage;
@override final  TextEditingController? searchNameController;
@override final  TextEditingController? phoneNameController;
@override final  TextEditingController? emailNameController;
@override@JsonKey() final  int badgeCount;

/// Create a copy of GetTeachersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeacherStateCopyWith<_CreateTeacherState> get copyWith => __$CreateTeacherStateCopyWithImpl<_CreateTeacherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeacherState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.searchNameController, searchNameController) || other.searchNameController == searchNameController)&&(identical(other.phoneNameController, phoneNameController) || other.phoneNameController == phoneNameController)&&(identical(other.emailNameController, emailNameController) || other.emailNameController == emailNameController)&&(identical(other.badgeCount, badgeCount) || other.badgeCount == badgeCount));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,errorMessage,searchNameController,phoneNameController,emailNameController,badgeCount);

@override
String toString() {
  return 'GetTeachersState(status: $status, data: $data, errorMessage: $errorMessage, searchNameController: $searchNameController, phoneNameController: $phoneNameController, emailNameController: $emailNameController, badgeCount: $badgeCount)';
}


}

/// @nodoc
abstract mixin class _$CreateTeacherStateCopyWith<$Res> implements $GetTeachersStateCopyWith<$Res> {
  factory _$CreateTeacherStateCopyWith(_CreateTeacherState value, $Res Function(_CreateTeacherState) _then) = __$CreateTeacherStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, PaginationModel<TeacherModel>? data, String? errorMessage, TextEditingController? searchNameController, TextEditingController? phoneNameController, TextEditingController? emailNameController, int badgeCount
});




}
/// @nodoc
class __$CreateTeacherStateCopyWithImpl<$Res>
    implements _$CreateTeacherStateCopyWith<$Res> {
  __$CreateTeacherStateCopyWithImpl(this._self, this._then);

  final _CreateTeacherState _self;
  final $Res Function(_CreateTeacherState) _then;

/// Create a copy of GetTeachersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? errorMessage = freezed,Object? searchNameController = freezed,Object? phoneNameController = freezed,Object? emailNameController = freezed,Object? badgeCount = null,}) {
  return _then(_CreateTeacherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaginationModel<TeacherModel>?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchNameController: freezed == searchNameController ? _self.searchNameController : searchNameController // ignore: cast_nullable_to_non_nullable
as TextEditingController?,phoneNameController: freezed == phoneNameController ? _self.phoneNameController : phoneNameController // ignore: cast_nullable_to_non_nullable
as TextEditingController?,emailNameController: freezed == emailNameController ? _self.emailNameController : emailNameController // ignore: cast_nullable_to_non_nullable
as TextEditingController?,badgeCount: null == badgeCount ? _self.badgeCount : badgeCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
