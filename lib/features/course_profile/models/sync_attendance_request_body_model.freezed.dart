// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_attendance_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncAttendanceRequestBodyModel {

 List<int> get id;
/// Create a copy of SyncAttendanceRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncAttendanceRequestBodyModelCopyWith<SyncAttendanceRequestBodyModel> get copyWith => _$SyncAttendanceRequestBodyModelCopyWithImpl<SyncAttendanceRequestBodyModel>(this as SyncAttendanceRequestBodyModel, _$identity);

  /// Serializes this SyncAttendanceRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncAttendanceRequestBodyModel&&const DeepCollectionEquality().equals(other.id, id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id));

@override
String toString() {
  return 'SyncAttendanceRequestBodyModel(id: $id)';
}


}

/// @nodoc
abstract mixin class $SyncAttendanceRequestBodyModelCopyWith<$Res>  {
  factory $SyncAttendanceRequestBodyModelCopyWith(SyncAttendanceRequestBodyModel value, $Res Function(SyncAttendanceRequestBodyModel) _then) = _$SyncAttendanceRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 List<int> id
});




}
/// @nodoc
class _$SyncAttendanceRequestBodyModelCopyWithImpl<$Res>
    implements $SyncAttendanceRequestBodyModelCopyWith<$Res> {
  _$SyncAttendanceRequestBodyModelCopyWithImpl(this._self, this._then);

  final SyncAttendanceRequestBodyModel _self;
  final $Res Function(SyncAttendanceRequestBodyModel) _then;

/// Create a copy of SyncAttendanceRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncAttendanceRequestBodyModel].
extension SyncAttendanceRequestBodyModelPatterns on SyncAttendanceRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncAttendanceRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncAttendanceRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncAttendanceRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _SyncAttendanceRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncAttendanceRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _SyncAttendanceRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncAttendanceRequestBodyModel() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> id)  $default,) {final _that = this;
switch (_that) {
case _SyncAttendanceRequestBodyModel():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> id)?  $default,) {final _that = this;
switch (_that) {
case _SyncAttendanceRequestBodyModel() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncAttendanceRequestBodyModel implements SyncAttendanceRequestBodyModel {
  const _SyncAttendanceRequestBodyModel({required final  List<int> id}): _id = id;
  factory _SyncAttendanceRequestBodyModel.fromJson(Map<String, dynamic> json) => _$SyncAttendanceRequestBodyModelFromJson(json);

 final  List<int> _id;
@override List<int> get id {
  if (_id is EqualUnmodifiableListView) return _id;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_id);
}


/// Create a copy of SyncAttendanceRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncAttendanceRequestBodyModelCopyWith<_SyncAttendanceRequestBodyModel> get copyWith => __$SyncAttendanceRequestBodyModelCopyWithImpl<_SyncAttendanceRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncAttendanceRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncAttendanceRequestBodyModel&&const DeepCollectionEquality().equals(other._id, _id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_id));

@override
String toString() {
  return 'SyncAttendanceRequestBodyModel(id: $id)';
}


}

/// @nodoc
abstract mixin class _$SyncAttendanceRequestBodyModelCopyWith<$Res> implements $SyncAttendanceRequestBodyModelCopyWith<$Res> {
  factory _$SyncAttendanceRequestBodyModelCopyWith(_SyncAttendanceRequestBodyModel value, $Res Function(_SyncAttendanceRequestBodyModel) _then) = __$SyncAttendanceRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 List<int> id
});




}
/// @nodoc
class __$SyncAttendanceRequestBodyModelCopyWithImpl<$Res>
    implements _$SyncAttendanceRequestBodyModelCopyWith<$Res> {
  __$SyncAttendanceRequestBodyModelCopyWithImpl(this._self, this._then);

  final _SyncAttendanceRequestBodyModel _self;
  final $Res Function(_SyncAttendanceRequestBodyModel) _then;

/// Create a copy of SyncAttendanceRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_SyncAttendanceRequestBodyModel(
id: null == id ? _self._id : id // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
