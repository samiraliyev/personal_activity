import 'package:flutter/material.dart';
import 'package:task/extension/size_extension.dart';

import 'package:task/ui/home/card/widget/card_profil_name.dart';

import '../../../constants/colors/app_color.dart';
import '../../../constants/path/app_path.dart';
import '../../../constants/strings/app_strings.dart';
import 'widget/button.dart';
import 'widget/card_profile_image.dart';
import 'widget/card_trailing_icon.dart';
import 'widget/report_choose_radio.dart';

class CardItems extends StatelessWidget {
  const CardItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        modalBottomSheet(context);
      },
      child: const Expanded(
        child: SizedBox(
          height: 75.0,
          child: Card(
            child: ListTile(
              leading: CardProfileImage(),
              title: CardProfilName(),
              trailing: CardTrailingIcon(),
            ),
          ),
        ),
      ),
    );
  }

  dynamic modalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      useSafeArea: true,
      enableDrag: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
      ),
      barrierColor: Colors.grey.withOpacity(0.5),
      isDismissible: false,
      isScrollControlled: true,
      elevation: 1.0,
      constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height * 0.7),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
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
                Container(
                  width: 36.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: AppColor.indicatorColor,
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        AppStrings.profile,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: AppColor.titleColor),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    69.h,
                    Container(
                      width: 128.0,
                      height: 128.0,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(AppPath.avatar),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    6.h,
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
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    28.h,
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
                    20.h,
                    const Divider(
                      height: 0.4,
                    ),
                    20.h,
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
                            color: AppColor.badgeColor,
                            textColor: AppColor.bgCard,
                            height: 50.0,
                            width: MediaQuery.of(context).size.width * 0.7,
                            text: AppStrings.btnText,
                            onPressed: () {},
                          ),
                        ),
                        GestureDetector(
                          onTap: () => showAlertDialog(context),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.bgCard,
                            ),
                            child: AppPath.more,
                          ),
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

  dynamic showAlertDialog(context) {
    return showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Stack(
          children: [
            Positioned(
              right: -20.0,
              bottom: 55.0,
              child: AlertDialog(
                backgroundColor: AppColor.bgCard,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        closeNotification(context);
                      },
                      child: Row(
                        children: [
                          Image.asset(AppPath.muteNotification),
                          10.w,
                          const Text(
                            AppStrings.closeNotification,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        blockUser(context);
                      },
                      child: Row(
                        children: [
                          Image.asset(AppPath.blockUser),
                          10.w,
                          const Text(
                            AppStrings.blockUser,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        reportUser(context);
                      },
                      child: Row(
                        children: [
                          Image.asset(AppPath.report),
                          10.w,
                          const Text(
                            AppStrings.report,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

// section for close notification
  closeNotification(context) {
    return showModalBottomSheet(
      anchorPoint: Offset.infinite,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 393.0,
            height: 206.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppStrings.verifyNotification,
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins,"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GlobalButton(
                        color: AppColor.bgCard,
                        textColor: AppColor.titleColor,
                        text: AppStrings.cancelBtnText,
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Expanded(
                      child: GlobalButton(
                        color: AppColor.badgeColor,
                        textColor: AppColor.bgCard,
                        text: AppStrings.confirmBtnText,
                        onPressed: () {
                          Navigator.pop(context);
                          showSnackBarForBlockingUser(context);
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  showSnackBarForNotification(context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          AppStrings.snackBarMessageForNotification,
          style: TextStyle(color: AppColor.bgCard),
        ),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
            label: AppStrings.cancelBtnText,
            textColor: AppColor.badgeColor,
            onPressed: () => Navigator.pop(context)),
      ),
    );
  }

// section for user blocking
  blockUser(context) {
    return showModalBottomSheet(
      anchorPoint: Offset.infinite,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 393.0,
            height: 206.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppStrings.blockingModalText,
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins,"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GlobalButton(
                        color: AppColor.bgCard,
                        textColor: AppColor.titleColor,
                        text: AppStrings.cancelBtnText,
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Expanded(
                      child: GlobalButton(
                        color: AppColor.badgeColor,
                        textColor: AppColor.bgCard,
                        text: AppStrings.confirmBlokBtnText,
                        onPressed: () {
                          Navigator.pop(context);
                          showSnackBarForBlockingUser(context);
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  showSnackBarForBlockingUser(context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          AppStrings.snackBarMessageForBlockingUser,
          style: TextStyle(color: AppColor.bgCard),
        ),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
            label: AppStrings.cancelBtnText,
            textColor: AppColor.badgeColor,
            onPressed: () => Navigator.pop(context)),
      ),
    );
  }

  // section for user reporting
  reportUser(context) {
    return showModalBottomSheet(
      useSafeArea: true,
      enableDrag: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
      ),
      barrierColor: Colors.grey.withOpacity(0.5),
      isDismissible: false,
      isScrollControlled: true,
      elevation: 1.0,
      constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height * 0.8),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
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
                Container(
                  width: 36.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: AppColor.indicatorColor,
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        AppStrings.report,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: AppColor.titleColor),
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
                52.h,
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppStrings.choosenTitle,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                18.h,
                const ReportChooseRadio(),
                Expanded(
                  child: GlobalButton(
                    onPressed: () {
                      Navigator.pop(context);
                      showBottomModalForReport(context);
                    },
                    width: MediaQuery.of(context).size.width * 0.8,
                    text: AppStrings.sendBtnText,
                    textColor: AppColor.bgCard,
                    color: AppColor.sendBtnColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

// section for the report modal result
  void showBottomModalForReport(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      enableDrag: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
      ),
      barrierColor: Colors.grey.withOpacity(0.5),
      isDismissible: false,
      isScrollControlled: true,
      elevation: 1.0,
      constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height * 0.5),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
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
                Container(
                  width: 36.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: AppColor.indicatorColor,
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        AppStrings.report,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: AppColor.titleColor),
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
                        child: const Center(child: Icon(Icons.close)),
                      ),
                    ),
                  ],
                ),
                69.h,
                Image.asset(AppPath.reportResult),
                27.h,
                const Text(
                  AppStrings.reportResultText,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
                24.h,
                GlobalButton(
                  height: 48.0,
                  width: MediaQuery.of(context).size.width,
                  textColor: AppColor.titleColor,
                  text: AppStrings.closeBtnText,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
