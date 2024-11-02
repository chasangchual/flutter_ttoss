import 'package:ttoss/model/bank.dart';

class BankRepository {
  List<Bank> findAll() {
    var banks = <Bank>[];

    banks.add(Bank(id: 1, name: "RBC", logoImagePath: "assets/images/rbc-logo.png"));
    banks.add(Bank(id: 2, name: "TD", logoImagePath: "assets/images/td-logo.png"));
    banks.add(Bank(id: 3, name: "CIBC", logoImagePath: "assets/images/cibc-logo.png"));
    banks.add(Bank(id: 4, name: "BMO", logoImagePath: "assets/images/bmo-logo.png"));
    banks.add(Bank(id: 5, name: "Scotia", logoImagePath: "assets/images/scotiabank-logo.png"));

    return banks;
  }
}
