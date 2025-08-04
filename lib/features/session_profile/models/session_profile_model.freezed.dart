// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionProfileModel {

 int get id;@JsonKey(name: 'session_date') String get sessionDate;@JsonKey(name: 'start_time') String get startTime;@JsonKey(name: 'end_time') String get endTime; List<QuizModel> get quizzes; List<HomeworksDue> get homeworksDue;
/// Create a copy of SessionProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionProfileModelCopyWith<SessionProfileModel> get copyWith => _$SessionProfileModelCopyWithImpl<SessionProfileModel>(this as SessionProfileModel, _$identity);

  /// Serializes this SessionProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&const DeepCollectionEquality().equals(other.quizzes, quizzes)&&const DeepCollectionEquality().equals(other.homeworksDue, homeworksDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sessionDate,startTime,endTime,const DeepCollectionEquality().hash(quizzes),const DeepCollectionEquality().hash(homeworksDue));

@override
String toString() {
  return 'SessionProfileModel(id: $id, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, quizzes: $quizzes, homeworksDue: $homeworksDue)';
}


}

/// @nodoc
abstract mixin class $SessionProfileModelCopyWith<$Res>  {
  factory $SessionProfileModelCopyWith(SessionProfileModel value, $Res Function(SessionProfileModel) _then) = _$SessionProfileModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'session_date') String sessionDate,@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime, List<QuizModel> quizzes, List<HomeworksDue> homeworksDue
});




}
/// @nodoc
class _$SessionProfileModelCopyWithImpl<$Res>
    implements $SessionProfileModelCopyWith<$Res> {
  _$SessionProfileModelCopyWithImpl(this._self, this._then);

  final SessionProfileModel _self;
  final $Res Function(SessionProfileModel) _then;

/// Create a copy of SessionProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sessionDate = null,Object? startTime = null,Object? endTime = null,Object? quizzes = null,Object? homeworksDue = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sessionDate: null == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,quizzes: null == quizzes ? _self.quizzes : quizzes // ignore: cast_nullable_to_non_nullable
as List<QuizModel>,homeworksDue: null == homeworksDue ? _self.homeworksDue : homeworksDue // ignore: cast_nullable_to_non_nullable
as List<HomeworksDue>,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionProfileModel].
extension SessionProfileModelPatterns on SessionProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _SessionProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _SessionProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'session_date')  String sessionDate, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime,  List<QuizModel> quizzes,  List<HomeworksDue> homeworksDue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionProfileModel() when $default != null:
return $default(_that.id,_that.sessionDate,_that.startTime,_that.endTime,_that.quizzes,_that.homeworksDue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'session_date')  String sessionDate, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime,  List<QuizModel> quizzes,  List<HomeworksDue> homeworksDue)  $default,) {final _that = this;
switch (_that) {
case _SessionProfileModel():
return $default(_that.id,_that.sessionDate,_that.startTime,_that.endTime,_that.quizzes,_that.homeworksDue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'session_date')  String sessionDate, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime,  List<QuizModel> quizzes,  List<HomeworksDue> homeworksDue)?  $default,) {final _that = this;
switch (_that) {
case _SessionProfileModel() when $default != null:
return $default(_that.id,_that.sessionDate,_that.startTime,_that.endTime,_that.quizzes,_that.homeworksDue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionProfileModel implements SessionProfileModel {
  const _SessionProfileModel({required this.id, @JsonKey(name: 'session_date') required this.sessionDate, @JsonKey(name: 'start_time') required this.startTime, @JsonKey(name: 'end_time') required this.endTime, required final  List<QuizModel> quizzes, required final  List<HomeworksDue> homeworksDue}): _quizzes = quizzes,_homeworksDue = homeworksDue;
  factory _SessionProfileModel.fromJson(Map<String, dynamic> json) => _$SessionProfileModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'session_date') final  String sessionDate;
@override@JsonKey(name: 'start_time') final  String startTime;
@override@JsonKey(name: 'end_time') final  String endTime;
 final  List<QuizModel> _quizzes;
@override List<QuizModel> get quizzes {
  if (_quizzes is EqualUnmodifiableListView) return _quizzes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_quizzes);
}

 final  List<HomeworksDue> _homeworksDue;
@override List<HomeworksDue> get homeworksDue {
  if (_homeworksDue is EqualUnmodifiableListView) return _homeworksDue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_homeworksDue);
}


/// Create a copy of SessionProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionProfileModelCopyWith<_SessionProfileModel> get copyWith => __$SessionProfileModelCopyWithImpl<_SessionProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sessionDate, sessionDate) || other.sessionDate == sessionDate)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&const DeepCollectionEquality().equals(other._quizzes, _quizzes)&&const DeepCollectionEquality().equals(other._homeworksDue, _homeworksDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sessionDate,startTime,endTime,const DeepCollectionEquality().hash(_quizzes),const DeepCollectionEquality().hash(_homeworksDue));

@override
String toString() {
  return 'SessionProfileModel(id: $id, sessionDate: $sessionDate, startTime: $startTime, endTime: $endTime, quizzes: $quizzes, homeworksDue: $homeworksDue)';
}


}

/// @nodoc
abstract mixin class _$SessionProfileModelCopyWith<$Res> implements $SessionProfileModelCopyWith<$Res> {
  factory _$SessionProfileModelCopyWith(_SessionProfileModel value, $Res Function(_SessionProfileModel) _then) = __$SessionProfileModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'session_date') String sessionDate,@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime, List<QuizModel> quizzes, List<HomeworksDue> homeworksDue
});




}
/// @nodoc
class __$SessionProfileModelCopyWithImpl<$Res>
    implements _$SessionProfileModelCopyWith<$Res> {
  __$SessionProfileModelCopyWithImpl(this._self, this._then);

  final _SessionProfileModel _self;
  final $Res Function(_SessionProfileModel) _then;

/// Create a copy of SessionProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sessionDate = null,Object? startTime = null,Object? endTime = null,Object? quizzes = null,Object? homeworksDue = null,}) {
  return _then(_SessionProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,sessionDate: null == sessionDate ? _self.sessionDate : sessionDate // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,quizzes: null == quizzes ? _self._quizzes : quizzes // ignore: cast_nullable_to_non_nullable
as List<QuizModel>,homeworksDue: null == homeworksDue ? _self._homeworksDue : homeworksDue // ignore: cast_nullable_to_non_nullable
as List<HomeworksDue>,
  ));
}


}

// dart format on
