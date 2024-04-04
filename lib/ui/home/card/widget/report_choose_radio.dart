import 'package:flutter/material.dart';

import '../../../../constants/colors/app_color.dart';
import '../../../../constants/strings/app_strings.dart';

class ReportChooseRadio extends StatefulWidget {
  const ReportChooseRadio({
    super.key,
  });

  @override
  State<ReportChooseRadio> createState() => _ReportChooseRadioState();
}

class _ReportChooseRadioState extends State<ReportChooseRadio> {
  String? choosedValue;

  List<String> reportOptions = [
    AppStrings.reportOption1,
    AppStrings.reportOption2,
    AppStrings.reportOption3,
    AppStrings.reportOption4,
    AppStrings.reportOption5,
    AppStrings.reportOption6,
    AppStrings.reportOption7,
    AppStrings.reportOption8,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: reportOptions.map((rOption) {
        return RadioListTile<String>(
          activeColor: AppColor.badgeColor,
          title: Text(
            rOption,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ),
          value: rOption,
          groupValue: choosedValue,
          onChanged: (String? value) {
            setState(() {
              choosedValue = value;
            });
          },
        );
      }).toList(),
    );
  }
}
