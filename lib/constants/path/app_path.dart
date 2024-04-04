import 'package:flutter/material.dart';
import 'package:task/constants/colors/app_color.dart';

class AppPath {
  AppPath._();
  static const Icon badgeIcon = Icon(
    Icons.verified,
    color: AppColor.badgeColor,
  );
  static const String profPic = "assets/images/sevinc.png";
  static const String avatar = "assets/images/avatar.png";
  static const Icon message = Icon(Icons.message);
  static const String inbox = "assets/images/message.png";
  static const Icon x = Icon(Icons.close);
  static const String badge = "assets/images/badge.png";
  static const Icon favIcon = Icon(
    Icons.favorite,
    color: AppColor.badgeColor,
  );
  static const Icon more = Icon(
    Icons.more_horiz,
    color: AppColor.subTitle,
  );
  static const String muteNotification = "assets/images/mute.png";
  static const String report = "assets/images/report.png";
  static const String blockUser = "assets/images/blockUser.png";
  static const String reportResult = "assets/images/report_result.png";
}
