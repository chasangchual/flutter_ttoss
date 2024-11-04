import 'package:flutter/material.dart';
import 'package:ttoss/common/theme/color/abs_theme_colors.dart';
import 'package:ttoss/common/theme/custom_theme.dart';
import 'package:ttoss/common/theme/shadows/abs_theme_shadows.dart';

extension ContextExtension on BuildContext {
  double width(double widthSize) {
    return MediaQuery.of(this).size.width * widthSize;
  }

  double height(double heightSize) {
    return MediaQuery.of(this).size.height * heightSize;
  }

  double get deviceWidth {
    return MediaQuery.of(this).size.width;
  }

  double get deviceHeight {
    return MediaQuery.of(this).size.height;
  }

  Orientation get deviceOrientation {
    return MediaQuery.of(this).orientation;
  }

  double get statusBarHeight {
    return MediaQuery.of(this).padding.top;
  }

  double get viewPaddingBottom {
    return MediaQuery.of(this).padding.bottom;
  }

  Brightness get platformBrightness {
    return MediaQuery.of(this).platformBrightness;
  }

  AbstractThemeColors get appColors => _getColors();

  AbsThemeShadows get appShadows => _getShadows();

  AbstractThemeColors _getColors() {
    if (Theme.of(this).brightness == Brightness.light) {
      return CustomTheme.light.appColors;
    } else {
      return CustomTheme.dark.appColors;
    }
  }

  AbsThemeShadows _getShadows() {
    if (Theme.of(this).brightness == Brightness.light) {
      return CustomTheme.light.appShadows;
    } else {
      return CustomTheme.dark.appShadows;
    }
  }
}
