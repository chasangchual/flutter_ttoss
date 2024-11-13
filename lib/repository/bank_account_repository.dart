import 'package:faker/faker.dart';
import 'package:ttoss/model/bank_account.dart';
import 'package:ttoss/repository/bank_repository.dart';
import 'package:uuid/uuid.dart';

class BankAccountRepository {
  final random = RandomGenerator(seed: 63833423);
  final Faker faker = Faker();
  final uuid = const Uuid();
  final banks = BankRepository().findAll();

  List<BankAccount> findAll() {
    var bankAccounts = <BankAccount>[];
    var id = 1;

    for (int i = 0; i < 200; i++) {
      bankAccounts.add(_fakeBankAccount(id++));
    }

    return bankAccounts;
  }

  BankAccount _fakeBankAccount(int id) {
    return BankAccount(
        id: id,
        number: uuid.v4().toString(),
        bank: banks[random.integer(banks.length)],
        balance: random.integer(100000).toDouble(),
        type: BankAccountType.values[random.integer(BankAccountType.values.length)]);
  }
}
