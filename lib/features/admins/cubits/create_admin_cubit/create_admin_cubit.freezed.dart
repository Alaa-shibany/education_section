// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_admin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAdminState {

 SubmissionStatus get status; CreateAdminResponse? get data; Permission? get selectedPermission; String? get errorMessage;
/// Create a copy of CreateAdminState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdminStateCopyWith<CreateAdminState> get copyWith => _$CreateAdminStateCopyWithImpl<CreateAdminState>(this as CreateAdminState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdminState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.selectedPermission, selectedPermission) || other.selectedPermission == selectedPermission)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,selectedPermission,errorMessage);

@override
String toString() {
  return 'CreateAdminState(status: $status, data: $data, selectedPermission: $selectedPermission, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CreateAdminStateCopyWith<$Res>  {
  factory $CreateAdminStateCopyWith(CreateAdminState value, $Res Function(CreateAdminState) _then) = _$CreateAdminStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, CreateAdminResponse? data, Permission? selectedPermission, String? errorMessage
});


$CreateAdminResponseCopyWith<$Res>? get data;$PermissionCopyWith<$Res>? get selectedPermission;

}
/// @nodoc
class _$CreateAdminStateCopyWithImpl<$Res>
    implements $CreateAdminStateCopyWith<$Res> {
  _$CreateAdminStateCopyWithImpl(this._self, this._then);

  final CreateAdminState _self;
  final $Res Function(CreateAdminState) _then;

/// Create a copy of CreateAdminState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? selectedPermission = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateAdminResponse?,selectedPermission: freezed == selectedPermission ? _self.selectedPermission : selectedPermission // ignore: cast_nullable_to_non_nullable
as Permission?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateAdminState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateAdminResponseCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateAdminResponseCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of CreateAdminState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionCopyWith<$Res>? get selectedPermission {
    if (_self.selectedPermission == null) {
    return null;
  }

  return $PermissionCopyWith<$Res>(_self.selectedPermission!, (value) {
    return _then(_self.copyWith(selectedPermission: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateAdminState].
extension CreateAdminStatePatterns on CreateAdminState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  CreateAdminResponse? data,  Permission? selectedPermission,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.selectedPermission,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  CreateAdminResponse? data,  Permission? selectedPermission,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState():
return $default(_that.status,_that.data,_that.selectedPermission,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  CreateAdminResponse? data,  Permission? selectedPermission,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.selectedPermission,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeacherState implements CreateAdminState {
  const _CreateTeacherState({this.status = SubmissionStatus.initial, this.data, this.selectedPermission, this.errorMessage});
  

@override@JsonKey() final  SubmissionStatus status;
@override final  CreateAdminResponse? data;
@override final  Permission? selectedPermission;
@override final  String? errorMessage;

/// Create a copy of CreateAdminState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeacherStateCopyWith<_CreateTeacherState> get copyWith => __$CreateTeacherStateCopyWithImpl<_CreateTeacherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeacherState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.selectedPermission, selectedPermission) || other.selectedPermission == selectedPermission)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,selectedPermission,errorMessage);

@override
String toString() {
  return 'CreateAdminState(status: $status, data: $data, selectedPermission: $selectedPermission, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CreateTeacherStateCopyWith<$Res> implements $CreateAdminStateCopyWith<$Res> {
  factory _$CreateTeacherStateCopyWith(_CreateTeacherState value, $Res Function(_CreateTeacherState) _then) = __$CreateTeacherStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, CreateAdminResponse? data, Permission? selectedPermission, String? errorMessage
});


@override $CreateAdminResponseCopyWith<$Res>? get data;@override $PermissionCopyWith<$Res>? get selectedPermission;

}
/// @nodoc
class __$CreateTeacherStateCopyWithImpl<$Res>
    implements _$CreateTeacherStateCopyWith<$Res> {
  __$CreateTeacherStateCopyWithImpl(this._self, this._then);

  final _CreateTeacherState _self;
  final $Res Function(_CreateTeacherState) _then;

/// Create a copy of CreateAdminState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? selectedPermission = freezed,Object? errorMessage = freezed,}) {
  return _then(_CreateTeacherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateAdminResponse?,selectedPermission: freezed == selectedPermission ? _self.selectedPermission : selectedPermission // ignore: cast_nullable_to_non_nullable
as Permission?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateAdminState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateAdminResponseCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateAdminResponseCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of CreateAdminState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PermissionCopyWith<$Res>? get selectedPermission {
    if (_self.selectedPermission == null) {
    return null;
  }

  return $PermissionCopyWith<$Res>(_self.selectedPermission!, (value) {
    return _then(_self.copyWith(selectedPermission: value));
  });
}
}

// dart format on
