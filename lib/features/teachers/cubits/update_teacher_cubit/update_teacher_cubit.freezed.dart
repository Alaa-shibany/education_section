// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_teacher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateTeacherState {

 SubmissionStatus get status; UpdatedTeacherResponse? get data; String? get errorMessage; List<SubjectModel> get selectedBooks;
/// Create a copy of UpdateTeacherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTeacherStateCopyWith<UpdateTeacherState> get copyWith => _$UpdateTeacherStateCopyWithImpl<UpdateTeacherState>(this as UpdateTeacherState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTeacherState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.selectedBooks, selectedBooks));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,errorMessage,const DeepCollectionEquality().hash(selectedBooks));

@override
String toString() {
  return 'UpdateTeacherState(status: $status, data: $data, errorMessage: $errorMessage, selectedBooks: $selectedBooks)';
}


}

/// @nodoc
abstract mixin class $UpdateTeacherStateCopyWith<$Res>  {
  factory $UpdateTeacherStateCopyWith(UpdateTeacherState value, $Res Function(UpdateTeacherState) _then) = _$UpdateTeacherStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, UpdatedTeacherResponse? data, String? errorMessage, List<SubjectModel> selectedBooks
});


$UpdatedTeacherResponseCopyWith<$Res>? get data;

}
/// @nodoc
class _$UpdateTeacherStateCopyWithImpl<$Res>
    implements $UpdateTeacherStateCopyWith<$Res> {
  _$UpdateTeacherStateCopyWithImpl(this._self, this._then);

  final UpdateTeacherState _self;
  final $Res Function(UpdateTeacherState) _then;

/// Create a copy of UpdateTeacherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? errorMessage = freezed,Object? selectedBooks = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UpdatedTeacherResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedBooks: null == selectedBooks ? _self.selectedBooks : selectedBooks // ignore: cast_nullable_to_non_nullable
as List<SubjectModel>,
  ));
}
/// Create a copy of UpdateTeacherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdatedTeacherResponseCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UpdatedTeacherResponseCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateTeacherState].
extension UpdateTeacherStatePatterns on UpdateTeacherState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  UpdatedTeacherResponse? data,  String? errorMessage,  List<SubjectModel> selectedBooks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.errorMessage,_that.selectedBooks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  UpdatedTeacherResponse? data,  String? errorMessage,  List<SubjectModel> selectedBooks)  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState():
return $default(_that.status,_that.data,_that.errorMessage,_that.selectedBooks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  UpdatedTeacherResponse? data,  String? errorMessage,  List<SubjectModel> selectedBooks)?  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.errorMessage,_that.selectedBooks);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeacherState implements UpdateTeacherState {
  const _CreateTeacherState({this.status = SubmissionStatus.initial, this.data, this.errorMessage, final  List<SubjectModel> selectedBooks = const []}): _selectedBooks = selectedBooks;
  

@override@JsonKey() final  SubmissionStatus status;
@override final  UpdatedTeacherResponse? data;
@override final  String? errorMessage;
 final  List<SubjectModel> _selectedBooks;
@override@JsonKey() List<SubjectModel> get selectedBooks {
  if (_selectedBooks is EqualUnmodifiableListView) return _selectedBooks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedBooks);
}


/// Create a copy of UpdateTeacherState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeacherStateCopyWith<_CreateTeacherState> get copyWith => __$CreateTeacherStateCopyWithImpl<_CreateTeacherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeacherState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._selectedBooks, _selectedBooks));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,errorMessage,const DeepCollectionEquality().hash(_selectedBooks));

@override
String toString() {
  return 'UpdateTeacherState(status: $status, data: $data, errorMessage: $errorMessage, selectedBooks: $selectedBooks)';
}


}

/// @nodoc
abstract mixin class _$CreateTeacherStateCopyWith<$Res> implements $UpdateTeacherStateCopyWith<$Res> {
  factory _$CreateTeacherStateCopyWith(_CreateTeacherState value, $Res Function(_CreateTeacherState) _then) = __$CreateTeacherStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, UpdatedTeacherResponse? data, String? errorMessage, List<SubjectModel> selectedBooks
});


@override $UpdatedTeacherResponseCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreateTeacherStateCopyWithImpl<$Res>
    implements _$CreateTeacherStateCopyWith<$Res> {
  __$CreateTeacherStateCopyWithImpl(this._self, this._then);

  final _CreateTeacherState _self;
  final $Res Function(_CreateTeacherState) _then;

/// Create a copy of UpdateTeacherState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? errorMessage = freezed,Object? selectedBooks = null,}) {
  return _then(_CreateTeacherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UpdatedTeacherResponse?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedBooks: null == selectedBooks ? _self._selectedBooks : selectedBooks // ignore: cast_nullable_to_non_nullable
as List<SubjectModel>,
  ));
}

/// Create a copy of UpdateTeacherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdatedTeacherResponseCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UpdatedTeacherResponseCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
