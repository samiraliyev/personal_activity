import 'package:flutter/material.dart';
import 'package:task/ui/home/home_page_view.dart';

import 'constants/colors/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.badgeColor),
        useMaterial3: true,
      ),
      home: const HomePageView(),
    );
  }
}
