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
  String? _character;

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
          title: Text(
            rOption,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ), // Use Text widget to display the option
          value: rOption,
          groupValue: _character,
          onChanged: (String? value) {
            setState(() {
              _character = value;
              Navigator.pop(context);
              showReportSnackBar();
            });
          },
        );
      }).toList(),
    );
  }

  showReportSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          AppStrings.reportResultText,
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
}
