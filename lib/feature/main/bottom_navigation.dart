import 'package:flutter/material.dart';
import 'package:ttoss/controller/app_controller.dart';
import 'package:ttoss/controller/bottom_navigation_controller.dart';
import 'package:ttoss/feature/home/home_fragment.dart';
import 'package:ttoss/feature/more/more_fragment.dart';
import 'package:ttoss/feature/payment/payment_fragment.dart';
import 'package:ttoss/feature/rewards/rewards_fragment.dart';
import 'package:ttoss/feature/stock/stock_fragment.dart';

Widget buildBottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
    items: bottomNavigationItems(context),
    onTap: (index) {
      BottomNavigationController.to.tap(index);
    },
  );
}

List<BottomNavigationBarItem> bottomNavigationItems(BuildContext context) {
  return NavigationTabItem.values.map((item) => item.toBottomNavigationBarItem(context, isActivated: true)).toList();
}

enum NavigationTabItem {
  home(Icons.home, 'Home', HomeFragment()),
  rewards(Icons.star, 'Rewards', RewardsFragment()),
  payment(Icons.payment, 'Payment', PaymentFragment()),
  stock(Icons.candlestick_chart, 'Stock', StockFragment()),
  more(Icons.menu, 'More', MoreFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String name;
  final Widget initialPage;

  const NavigationTabItem(this.activeIcon, this.name, this.initialPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toBottomNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(name),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? AppController.to.themeColors.iconButton : AppController.to.themeColors.iconButtonInactivate,
        ),
        label: name,
        tooltip: name);
  }
}
