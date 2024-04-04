import 'package:flutter/material.dart';
import 'package:task/constants/path/app_path.dart';
import 'package:task/constants/strings/app_strings.dart';

class UserModel {
  final String fullName;
  final String area;
  final Icon badgeIcon;
  final String userAge;
  final String profPic;
  final Icon message;

  UserModel({
    required this.fullName,
    required this.area,
    required this.badgeIcon,
    required this.userAge,
    required this.profPic,
    required this.message,
  });

  static List<UserModel> users = [
    UserModel(
      fullName: AppStrings.userName,
      area: AppStrings.area,
      badgeIcon: AppPath.badgeIcon,
      userAge: AppStrings.userAge,
      profPic: AppPath.profPic,
      message: AppPath.message,
    ),
  ];
}
