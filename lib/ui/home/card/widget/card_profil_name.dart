import 'package:flutter/material.dart';
import 'package:task/constants/path/app_path.dart';
import 'package:task/constants/strings/app_strings.dart';

import 'package:task/extension/size_extension.dart';

import '../../../../constants/colors/app_color.dart';

class CardProfilName extends StatelessWidget {
  const CardProfilName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  AppStrings.userName,
                  style: TextStyle(
                      fontFamily: "Poppins", fontWeight: FontWeight.bold),
                ),
                5.w,
                const Text(
                  AppStrings.userAge,
                  style: TextStyle(
                      fontFamily: "Poppins", fontWeight: FontWeight.bold),
                ),
                5.w,
                const Expanded(child: AppPath.badgeIcon),
              ],
            ),
            const Text(
              AppStrings.area,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14.0,
                  color: AppColor.subTitle,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
