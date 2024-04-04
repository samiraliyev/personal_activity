import 'package:flutter/material.dart';
import 'package:task/constants/path/app_path.dart';

class CardTrailingIcon extends StatelessWidget {
  const CardTrailingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0,
      child: Image.asset(AppPath.inbox),
    );
  }
}
