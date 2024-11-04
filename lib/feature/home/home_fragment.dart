import 'package:flutter/material.dart';
import 'package:ttoss/feature/home/ttoss_app_bar.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        child: Stack(
          children: [
            SingleChildScrollView(child: Column()),
            TtossAppBar(),
          ],
        ),
      ),
    );
  }
}
