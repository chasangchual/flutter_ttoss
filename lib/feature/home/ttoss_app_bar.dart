import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ttoss/common/theme/custom_theme.dart';
import 'package:ttoss/common/widget/height_and_width.dart';
import 'package:ttoss/controller/app_notification_controller.dart';

class TtossAppBar extends StatelessWidget {
  const TtossAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: getColors(context).appBarBgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Width(10),
              Icon(FontAwesomeIcons.solidCircleUser),
            ],
          ),
          Row(
            children: [
              const Icon(FontAwesomeIcons.mapPin),
              const Width(10),
              Obx(() {
                return Stack(
                  children: [
                    const Icon(FontAwesomeIcons.solidBell),
                    if (AppBarController.to.newNotificationAvailable)
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      )
                  ],
                );
              }),
              const Width(10),
            ],
          )
        ],
      ),
    );
  }
}
