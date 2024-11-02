import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttoss/model/bank.dart';

part 'bank_account.freezed.dart';
part 'bank_account.g.dart';

@freezed
class BankAccount with _$BankAccount {
  factory BankAccount({
    required int id,
    required String number,
    required Bank bank,
    required BankAccountType type,
    required double balance,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) => _$BankAccountFromJson(json);
}

enum BankAccountType { personal, creditCard, minus, stock }
