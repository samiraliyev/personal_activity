import 'package:flutter/material.dart';
import 'package:task/constants/path/app_path.dart';

class CardProfileImage extends StatelessWidget {
  const CardProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        child: Image.asset(AppPath.profPic),
      ),
      Positioned(
        top: 30.0,
        right: 1.0,
        child: Container(
          width: 12.0,
          height: 12.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
              border: Border.all(
                color: Colors.white,
                width: 1.5,
              )),
        ),
      )
    ]);
  }
}
