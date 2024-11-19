// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'message': instance.message,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.email: 'email',
  NotificationType.foreign_currency_transfer: 'foreign_currency_transfer',
  NotificationType.payment: 'payment',
  NotificationType.rate_change: 'rate_change',
  NotificationType.wire_transfer: 'wire_transfer',
  NotificationType.security: 'security',
};
