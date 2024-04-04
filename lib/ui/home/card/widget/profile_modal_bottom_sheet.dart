import 'package:flutter/material.dart';
import 'package:task/constants/strings/app_strings.dart';
import 'package:task/extension/size_extension.dart';
import 'package:task/ui/home/card/widget/button.dart';

import '../../../../constants/colors/app_color.dart';
import '../../../../constants/path/app_path.dart';

class ProfileModalBottomSheet extends StatelessWidget {
  const ProfileModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  dynamic modalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
      ),
      barrierColor: Colors.grey.withOpacity(0.3),
      isDismissible: false,
      isScrollControlled: true,
      elevation: 1.0,
      constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height * 0.75),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(2.0),
                topRight: Radius.circular(2.0),
              ),
            ),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        AppStrings.profile,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 22.0,
                            color: AppColor.subTitle),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: const BoxDecoration(
                            color: AppColor.grey, shape: BoxShape.circle),
                        child: const Center(child: AppPath.x),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(AppPath.avatar),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AppStrings.userAvatar,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600),
                        ),
                        5.w,
                        const Text(
                          AppStrings.avatarAge,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600),
                        ),
                        5.w,
                        Image.asset(
                          AppPath.badge,
                          width: 50.0,
                        )
                      ],
                    ),
                    const Text(
                      AppStrings.area,
                      style: TextStyle(fontFamily: "Poppins", fontSize: 20.0),
                    ),
                    10.h,
                    Container(
                      width: 90.0,
                      height: 40.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.bgFav,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AppPath.favIcon,
                            Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                AppStrings.favorite,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 50.0,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppStrings.bio,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AppStrings.description,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: AppColor.descColor,
                        ),
                      ),
                    ),
                    20.h,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: GlobalButton(
                            height: 50.0,
                            width: MediaQuery.of(context).size.width * 0.7,
                            text: AppStrings.btnText,
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.bgCard,
                          ),
                          child: GestureDetector(
                              onTap: () {}, child: AppPath.more),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
