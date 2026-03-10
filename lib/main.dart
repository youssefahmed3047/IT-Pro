import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_pro/Core/app_theme.dart';
import 'package:it_pro/Features/Authintication/authintication.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1080, 2400),
      builder: (context, child) => MaterialApp(
        title: 'IT PRO',
        theme: Apptheme().appTheme(),
        home: Authintication(),
      ),
    );
  }
}
