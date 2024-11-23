// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserNotificationImpl _$$UserNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserNotificationImpl(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$UserNotificationTypeEnumMap, json['type']),
      message: json['message'] as String,
      state: $enumDecode(_$UserNotificationStateEnumMap, json['state']),
      date: DateTime.parse(json['date'] as String),
      dateOfRead: json['dateOfRead'] == null
          ? null
          : DateTime.parse(json['dateOfRead'] as String),
    );

Map<String, dynamic> _$$UserNotificationImplToJson(
        _$UserNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$UserNotificationTypeEnumMap[instance.type]!,
      'message': instance.message,
      'state': _$UserNotificationStateEnumMap[instance.state]!,
      'date': instance.date.toIso8601String(),
      'dateOfRead': instance.dateOfRead?.toIso8601String(),
    };

const _$UserNotificationTypeEnumMap = {
  UserNotificationType.email: 'email',
  UserNotificationType.foreign_currency_transfer: 'foreign_currency_transfer',
  UserNotificationType.payment: 'payment',
  UserNotificationType.rate_change: 'rate_change',
  UserNotificationType.wire_transfer: 'wire_transfer',
  UserNotificationType.security: 'security',
};

const _$UserNotificationStateEnumMap = {
  UserNotificationState.popped: 'popped',
  UserNotificationState.delivered: 'delivered',
  UserNotificationState.read: 'read',
  UserNotificationState.archived: 'archived',
};
