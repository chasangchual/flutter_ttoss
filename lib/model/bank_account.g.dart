// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankAccountImpl _$$BankAccountImplFromJson(Map<String, dynamic> json) =>
    _$BankAccountImpl(
      id: (json['id'] as num).toInt(),
      number: json['number'] as String,
      bank: Bank.fromJson(json['bank'] as Map<String, dynamic>),
      type: $enumDecode(_$BankAccountTypeEnumMap, json['type']),
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$BankAccountImplToJson(_$BankAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'bank': instance.bank,
      'type': _$BankAccountTypeEnumMap[instance.type]!,
      'balance': instance.balance,
    };

const _$BankAccountTypeEnumMap = {
  BankAccountType.personal: 'personal',
  BankAccountType.creditCard: 'creditCard',
  BankAccountType.lineOfCredit: 'lineOfCredit',
  BankAccountType.stock: 'stock',
};
