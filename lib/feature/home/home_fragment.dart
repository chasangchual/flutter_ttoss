import 'package:flutter/material.dart';
import 'package:ttoss/common/dart/extension/context_extension.dart';
import 'package:ttoss/common/dart/extension/snackbar_context_extension.dart';
import 'package:ttoss/common/widget/arrow.dart';
import 'package:ttoss/feature/home/ttoss_app_bar.dart';
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
              ]),
            ),
            const TtossAppBar(),
          ],
        ),
      ),
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
      padding: (v: 2, h: 2),
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
