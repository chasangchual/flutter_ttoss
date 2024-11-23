// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserNotification _$UserNotificationFromJson(Map<String, dynamic> json) {
  return _UserNotification.fromJson(json);
}

/// @nodoc
mixin _$UserNotification {
  int get id => throw _privateConstructorUsedError;
  UserNotificationType get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserNotificationState get state => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  DateTime? get dateOfRead => throw _privateConstructorUsedError;

  /// Serializes this UserNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserNotificationCopyWith<UserNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNotificationCopyWith<$Res> {
  factory $UserNotificationCopyWith(
          UserNotification value, $Res Function(UserNotification) then) =
      _$UserNotificationCopyWithImpl<$Res, UserNotification>;
  @useResult
  $Res call(
      {int id,
      UserNotificationType type,
      String message,
      UserNotificationState state,
      DateTime date,
      DateTime? dateOfRead});
}

/// @nodoc
class _$UserNotificationCopyWithImpl<$Res, $Val extends UserNotification>
    implements $UserNotificationCopyWith<$Res> {
  _$UserNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? message = null,
    Object? state = null,
    Object? date = null,
    Object? dateOfRead = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserNotificationType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UserNotificationState,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfRead: freezed == dateOfRead
          ? _value.dateOfRead
          : dateOfRead // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNotificationImplCopyWith<$Res>
    implements $UserNotificationCopyWith<$Res> {
  factory _$$UserNotificationImplCopyWith(_$UserNotificationImpl value,
          $Res Function(_$UserNotificationImpl) then) =
      __$$UserNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      UserNotificationType type,
      String message,
      UserNotificationState state,
      DateTime date,
      DateTime? dateOfRead});
}

/// @nodoc
class __$$UserNotificationImplCopyWithImpl<$Res>
    extends _$UserNotificationCopyWithImpl<$Res, _$UserNotificationImpl>
    implements _$$UserNotificationImplCopyWith<$Res> {
  __$$UserNotificationImplCopyWithImpl(_$UserNotificationImpl _value,
      $Res Function(_$UserNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? message = null,
    Object? state = null,
    Object? date = null,
    Object? dateOfRead = freezed,
  }) {
    return _then(_$UserNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserNotificationType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UserNotificationState,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfRead: freezed == dateOfRead
          ? _value.dateOfRead
          : dateOfRead // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserNotificationImpl implements _UserNotification {
  _$UserNotificationImpl(
      {required this.id,
      required this.type,
      required this.message,
      required this.state,
      required this.date,
      this.dateOfRead});

  factory _$UserNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNotificationImplFromJson(json);

  @override
  final int id;
  @override
  final UserNotificationType type;
  @override
  final String message;
  @override
  final UserNotificationState state;
  @override
  final DateTime date;
  @override
  final DateTime? dateOfRead;

  @override
  String toString() {
    return 'UserNotification(id: $id, type: $type, message: $message, state: $state, date: $date, dateOfRead: $dateOfRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateOfRead, dateOfRead) ||
                other.dateOfRead == dateOfRead));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, message, state, date, dateOfRead);

  /// Create a copy of UserNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNotificationImplCopyWith<_$UserNotificationImpl> get copyWith =>
      __$$UserNotificationImplCopyWithImpl<_$UserNotificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNotificationImplToJson(
      this,
    );
  }
}

abstract class _UserNotification implements UserNotification {
  factory _UserNotification(
      {required final int id,
      required final UserNotificationType type,
      required final String message,
      required final UserNotificationState state,
      required final DateTime date,
      final DateTime? dateOfRead}) = _$UserNotificationImpl;

  factory _UserNotification.fromJson(Map<String, dynamic> json) =
      _$UserNotificationImpl.fromJson;

  @override
  int get id;
  @override
  UserNotificationType get type;
  @override
  String get message;
  @override
  UserNotificationState get state;
  @override
  DateTime get date;
  @override
  DateTime? get dateOfRead;

  /// Create a copy of UserNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserNotificationImplCopyWith<_$UserNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
