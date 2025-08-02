// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_admin_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAdminRequestBodyModel {

 String get username; String get password; int get role;
/// Create a copy of CreateAdminRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdminRequestBodyModelCopyWith<CreateAdminRequestBodyModel> get copyWith => _$CreateAdminRequestBodyModelCopyWithImpl<CreateAdminRequestBodyModel>(this as CreateAdminRequestBodyModel, _$identity);

  /// Serializes this CreateAdminRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdminRequestBodyModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,role);

@override
String toString() {
  return 'CreateAdminRequestBodyModel(username: $username, password: $password, role: $role)';
}


}

/// @nodoc
abstract mixin class $CreateAdminRequestBodyModelCopyWith<$Res>  {
  factory $CreateAdminRequestBodyModelCopyWith(CreateAdminRequestBodyModel value, $Res Function(CreateAdminRequestBodyModel) _then) = _$CreateAdminRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 String username, String password, int role
});




}
/// @nodoc
class _$CreateAdminRequestBodyModelCopyWithImpl<$Res>
    implements $CreateAdminRequestBodyModelCopyWith<$Res> {
  _$CreateAdminRequestBodyModelCopyWithImpl(this._self, this._then);

  final CreateAdminRequestBodyModel _self;
  final $Res Function(CreateAdminRequestBodyModel) _then;

/// Create a copy of CreateAdminRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,Object? role = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAdminRequestBodyModel].
extension CreateAdminRequestBodyModelPatterns on CreateAdminRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAdminRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAdminRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAdminRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateAdminRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAdminRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAdminRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String password,  int role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdminRequestBodyModel() when $default != null:
return $default(_that.username,_that.password,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String password,  int role)  $default,) {final _that = this;
switch (_that) {
case _CreateAdminRequestBodyModel():
return $default(_that.username,_that.password,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String password,  int role)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdminRequestBodyModel() when $default != null:
return $default(_that.username,_that.password,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAdminRequestBodyModel implements CreateAdminRequestBodyModel {
  const _CreateAdminRequestBodyModel({required this.username, required this.password, required this.role});
  factory _CreateAdminRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateAdminRequestBodyModelFromJson(json);

@override final  String username;
@override final  String password;
@override final  int role;

/// Create a copy of CreateAdminRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdminRequestBodyModelCopyWith<_CreateAdminRequestBodyModel> get copyWith => __$CreateAdminRequestBodyModelCopyWithImpl<_CreateAdminRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAdminRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdminRequestBodyModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,role);

@override
String toString() {
  return 'CreateAdminRequestBodyModel(username: $username, password: $password, role: $role)';
}


}

/// @nodoc
abstract mixin class _$CreateAdminRequestBodyModelCopyWith<$Res> implements $CreateAdminRequestBodyModelCopyWith<$Res> {
  factory _$CreateAdminRequestBodyModelCopyWith(_CreateAdminRequestBodyModel value, $Res Function(_CreateAdminRequestBodyModel) _then) = __$CreateAdminRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 String username, String password, int role
});




}
/// @nodoc
class __$CreateAdminRequestBodyModelCopyWithImpl<$Res>
    implements _$CreateAdminRequestBodyModelCopyWith<$Res> {
  __$CreateAdminRequestBodyModelCopyWithImpl(this._self, this._then);

  final _CreateAdminRequestBodyModel _self;
  final $Res Function(_CreateAdminRequestBodyModel) _then;

/// Create a copy of CreateAdminRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,Object? role = null,}) {
  return _then(_CreateAdminRequestBodyModel(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
