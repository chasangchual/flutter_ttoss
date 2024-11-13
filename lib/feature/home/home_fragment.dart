import 'package:flutter/material.dart';
import 'package:ttoss/common/dart/extension/snackbar_context_extension.dart';
import 'package:ttoss/common/widget/arrow.dart';
import 'package:ttoss/common/widget/height_and_width.dart';
import 'package:ttoss/common/widget/round_container.dart';
import 'package:ttoss/common/widget/tap.dart';
import 'package:ttoss/feature/home/ttoss_app_bar.dart';
import 'package:ttoss/model/bank_account.dart';
import 'package:ttoss/repository/bank_account_repository.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 60),
              child: Column(children: [
                BigButton('Ttoss', onTap: () {
                  context.showSnackbar('Ttoss bank pressed');
                }),
                ...BankAccountRepository().findAll().map((e) => BackAccountItem(e)).toList()
              ]),
            ),
            const TtossAppBar(),
          ],
        ),
      ),
    );
  }
}

class BackAccountItem extends StatelessWidget {
  final BankAccount bankAccount;

  const BackAccountItem(this.bankAccount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Image.asset(
            bankAccount.bank.logoImagePath,
            width: 25,
            height: 25,
          ),
          Width(5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bankAccount.type != null
                  ? Text("${bankAccount.bank.name} ${bankAccount.type.name}", style: TextStyle(fontSize: 9))
                  : Text("${bankAccount.bank.name}", style: TextStyle(fontSize: 12)),
              Text("\$ ${bankAccount.balance}")
            ],
          ).pSymmetric(h: 4),
        ]).pSymmetric(h: 2),
        Tap(
          onTap: () {},
          child: RoundedContainer(
            child: Text('Trnasfer'),
          ),
        )
      ],
    );
  }
}

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BigButton(this.text, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return const RoundedContainer(
      padding: (v: 2, h: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Ttoss Bank', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Arrow(),
        ],
      ),
    );
  }
}
