// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_teacher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateTeacherState {

 List<SubjectModel> get selectedBooks; SubmissionStatus get status; teacherModel? get createdTeacher; String? get errorMessage;
/// Create a copy of CreateTeacherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTeacherStateCopyWith<CreateTeacherState> get copyWith => _$CreateTeacherStateCopyWithImpl<CreateTeacherState>(this as CreateTeacherState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTeacherState&&const DeepCollectionEquality().equals(other.selectedBooks, selectedBooks)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdTeacher, createdTeacher) || other.createdTeacher == createdTeacher)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedBooks),status,createdTeacher,errorMessage);

@override
String toString() {
  return 'CreateTeacherState(selectedBooks: $selectedBooks, status: $status, createdTeacher: $createdTeacher, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CreateTeacherStateCopyWith<$Res>  {
  factory $CreateTeacherStateCopyWith(CreateTeacherState value, $Res Function(CreateTeacherState) _then) = _$CreateTeacherStateCopyWithImpl;
@useResult
$Res call({
 List<SubjectModel> selectedBooks, SubmissionStatus status, teacherModel? createdTeacher, String? errorMessage
});


$teacherModelCopyWith<$Res>? get createdTeacher;

}
/// @nodoc
class _$CreateTeacherStateCopyWithImpl<$Res>
    implements $CreateTeacherStateCopyWith<$Res> {
  _$CreateTeacherStateCopyWithImpl(this._self, this._then);

  final CreateTeacherState _self;
  final $Res Function(CreateTeacherState) _then;

/// Create a copy of CreateTeacherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedBooks = null,Object? status = null,Object? createdTeacher = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
selectedBooks: null == selectedBooks ? _self.selectedBooks : selectedBooks // ignore: cast_nullable_to_non_nullable
as List<SubjectModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,createdTeacher: freezed == createdTeacher ? _self.createdTeacher : createdTeacher // ignore: cast_nullable_to_non_nullable
as teacherModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateTeacherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$teacherModelCopyWith<$Res>? get createdTeacher {
    if (_self.createdTeacher == null) {
    return null;
  }

  return $teacherModelCopyWith<$Res>(_self.createdTeacher!, (value) {
    return _then(_self.copyWith(createdTeacher: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateTeacherState].
extension CreateTeacherStatePatterns on CreateTeacherState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SubjectModel> selectedBooks,  SubmissionStatus status,  teacherModel? createdTeacher,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.selectedBooks,_that.status,_that.createdTeacher,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SubjectModel> selectedBooks,  SubmissionStatus status,  teacherModel? createdTeacher,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState():
return $default(_that.selectedBooks,_that.status,_that.createdTeacher,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SubjectModel> selectedBooks,  SubmissionStatus status,  teacherModel? createdTeacher,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.selectedBooks,_that.status,_that.createdTeacher,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeacherState implements CreateTeacherState {
  const _CreateTeacherState({final  List<SubjectModel> selectedBooks = const [], this.status = SubmissionStatus.initial, this.createdTeacher, this.errorMessage}): _selectedBooks = selectedBooks;
  

 final  List<SubjectModel> _selectedBooks;
@override@JsonKey() List<SubjectModel> get selectedBooks {
  if (_selectedBooks is EqualUnmodifiableListView) return _selectedBooks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedBooks);
}

@override@JsonKey() final  SubmissionStatus status;
@override final  teacherModel? createdTeacher;
@override final  String? errorMessage;

/// Create a copy of CreateTeacherState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeacherStateCopyWith<_CreateTeacherState> get copyWith => __$CreateTeacherStateCopyWithImpl<_CreateTeacherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeacherState&&const DeepCollectionEquality().equals(other._selectedBooks, _selectedBooks)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdTeacher, createdTeacher) || other.createdTeacher == createdTeacher)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedBooks),status,createdTeacher,errorMessage);

@override
String toString() {
  return 'CreateTeacherState(selectedBooks: $selectedBooks, status: $status, createdTeacher: $createdTeacher, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CreateTeacherStateCopyWith<$Res> implements $CreateTeacherStateCopyWith<$Res> {
  factory _$CreateTeacherStateCopyWith(_CreateTeacherState value, $Res Function(_CreateTeacherState) _then) = __$CreateTeacherStateCopyWithImpl;
@override @useResult
$Res call({
 List<SubjectModel> selectedBooks, SubmissionStatus status, teacherModel? createdTeacher, String? errorMessage
});


@override $teacherModelCopyWith<$Res>? get createdTeacher;

}
/// @nodoc
class __$CreateTeacherStateCopyWithImpl<$Res>
    implements _$CreateTeacherStateCopyWith<$Res> {
  __$CreateTeacherStateCopyWithImpl(this._self, this._then);

  final _CreateTeacherState _self;
  final $Res Function(_CreateTeacherState) _then;

/// Create a copy of CreateTeacherState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedBooks = null,Object? status = null,Object? createdTeacher = freezed,Object? errorMessage = freezed,}) {
  return _then(_CreateTeacherState(
selectedBooks: null == selectedBooks ? _self._selectedBooks : selectedBooks // ignore: cast_nullable_to_non_nullable
as List<SubjectModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,createdTeacher: freezed == createdTeacher ? _self.createdTeacher : createdTeacher // ignore: cast_nullable_to_non_nullable
as teacherModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateTeacherState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$teacherModelCopyWith<$Res>? get createdTeacher {
    if (_self.createdTeacher == null) {
    return null;
  }

  return $teacherModelCopyWith<$Res>(_self.createdTeacher!, (value) {
    return _then(_self.copyWith(createdTeacher: value));
  });
}
}

// dart format on
