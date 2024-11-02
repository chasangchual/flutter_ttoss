import 'package:flutter/material.dart';
import 'package:ttoss/repository/bank_account_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BankAccountRepository().findAll();

    return const Center(
      child: Text("Home"),
    );
  }
}
