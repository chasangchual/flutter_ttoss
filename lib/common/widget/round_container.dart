import 'package:flutter/material.dart';
import 'package:ttoss/common/dart/extension/context_extension.dart';
import 'package:velocity_x/velocity_x.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final ({double v, double h}) padding;
  final double circularRadius;

  const RoundedContainer({required this.child, this.padding = (v: 5.0, h: 5.0), this.circularRadius = 10.0, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: context.appColors.buttonBackground, borderRadius: BorderRadius.circular(circularRadius)),
      child: child,
    ).pSymmetric(h: padding.h, v: padding.h);
  }
}
