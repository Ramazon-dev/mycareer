import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mycareer/core/theme/app_colors.dart';

class AppIcons {
  const AppIcons._();

  static SvgPicture cross({Color? color, double? size}) {
    return SvgPicture.asset(
      "assets/icons/ic_cross.svg",
      fit: BoxFit.cover,
      height: size ?? 24.0,
      color: color ?? AppColors.blue,
    );
  }

  static SvgPicture document({Color? color, double? size}) {
    return SvgPicture.asset(
      "assets/icons/ic_document.svg",
      fit: BoxFit.cover,
      height: size ?? 24.0,
      color: color ?? AppColors.blue,
    );
  }

  static SvgPicture drawerMenu({Color? color, double? size}) {
    return SvgPicture.asset(
      "assets/icons/ic_drawer_menu.svg",
      fit: BoxFit.cover,
      height: size ?? 24.0,
      color: color ?? AppColors.blue,
    );
  }

  static SvgPicture home({Color? color, double? size}) {
    return SvgPicture.asset(
      "assets/icons/ic_home.svg",
      fit: BoxFit.cover,
      height: size ?? 24.0,
      color: color ?? AppColors.blue,
    );
  }

  static SvgPicture notification({Color? color, double? size}) {
    return SvgPicture.asset(
      "assets/icons/ic_notification.svg",
      fit: BoxFit.cover,
      height: size ?? 24.0,
      color: color ?? AppColors.blue,
    );
  }

  static SvgPicture person({Color? color, double? size}) {
    return SvgPicture.asset(
      "assets/icons/ic_person.svg",
      fit: BoxFit.cover,
      height: size ?? 24.0,
      color: color ?? AppColors.blue,
    );
  }

  static SvgPicture send({Color? color, double? size}) {
    return SvgPicture.asset(
      "assets/icons/ic_send.svg",
      fit: BoxFit.cover,
      height: size ?? 24.0,
      color: color ?? AppColors.blue,
    );
  }

  static SvgPicture sticker({Color? color, double? size}) {
    return SvgPicture.asset(
      "assets/icons/ic_sticker.svg",
      fit: BoxFit.cover,
      height: size ?? 24.0,
      color: color ?? AppColors.blue,
    );
  }

  static SvgPicture warning({Color? color, double? size}) {
    return SvgPicture.asset(
      "assets/icons/ic_warning.svg",
      fit: BoxFit.cover,
      height: size ?? 24.0,
      color: color ?? AppColors.blue,
    );
  }
}
