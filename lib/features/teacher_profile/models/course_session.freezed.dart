// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseSession {

 int get id;@JsonKey(name: 'session_date') String get sessionDate;
/// Create a copy of CourseSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseSessionCopyWith<CourseSession> get copyWith => _$CourseSessionCopyWithImpl<CourseSession>(this as CourseSession, _$identity);

  /// Serializes this CourseSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseSession&&(identical(other.id, id) || other.id == id)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sessionDate);

@override
String toString() {
  return 'CourseSession(id: $id, sessionDate: $sessionDate)';
}


}

/// @nodoc
abstract mixin class $CourseSessionCopyWith<$Res>  {
  factory $CourseSessionCopyWith(CourseSession value, $Res Function(CourseSession) _then) = _$CourseSessionCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'session_date') String sessionDate
});




}
/// @nodoc
class _$CourseSessionCopyWithImpl<$Res>
    implements $CourseSessionCopyWith<$Res> {
  _$CourseSessionCopyWithImpl(this._self, this._then);

  final CourseSession _self;
  final $Res Function(CourseSession) _then;

/// Create a copy of CourseSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sessionDate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sessionDate: null == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseSession].
extension CourseSessionPatterns on CourseSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseSession value)  $default,){
final _that = this;
switch (_that) {
case _CourseSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseSession value)?  $default,){
final _that = this;
switch (_that) {
case _CourseSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'session_date')  String sessionDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseSession() when $default != null:
return $default(_that.id,_that.sessionDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'session_date')  String sessionDate)  $default,) {final _that = this;
switch (_that) {
case _CourseSession():
return $default(_that.id,_that.sessionDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'session_date')  String sessionDate)?  $default,) {final _that = this;
switch (_that) {
case _CourseSession() when $default != null:
return $default(_that.id,_that.sessionDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseSession implements CourseSession {
  const _CourseSession({required this.id, @JsonKey(name: 'session_date') required this.sessionDate});
  factory _CourseSession.fromJson(Map<String, dynamic> json) => _$CourseSessionFromJson(json);

@override final  int id;
@override@JsonKey(name: 'session_date') final  String sessionDate;

/// Create a copy of CourseSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseSessionCopyWith<_CourseSession> get copyWith => __$CourseSessionCopyWithImpl<_CourseSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseSession&&(identical(other.id, id) || other.id == id)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sessionDate);

@override
String toString() {
  return 'CourseSession(id: $id, sessionDate: $sessionDate)';
}


}

/// @nodoc
abstract mixin class _$CourseSessionCopyWith<$Res> implements $CourseSessionCopyWith<$Res> {
  factory _$CourseSessionCopyWith(_CourseSession value, $Res Function(_CourseSession) _then) = __$CourseSessionCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'session_date') String sessionDate
});




}
/// @nodoc
class __$CourseSessionCopyWithImpl<$Res>
    implements _$CourseSessionCopyWith<$Res> {
  __$CourseSessionCopyWithImpl(this._self, this._then);

  final _CourseSession _self;
  final $Res Function(_CourseSession) _then;

/// Create a copy of CourseSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sessionDate = null,}) {
  return _then(_CourseSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sessionDate: null == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
