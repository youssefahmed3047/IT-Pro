import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_pro/Shared%20Widgets/custom_login_button.dart';
import 'package:it_pro/Shared%20Widgets/custom_textfeild.dart';
import 'package:it_pro/Shared%20Widgets/other_login_options.dart';

class Register extends StatelessWidget {
  final GestureTapCallback navigation;
  const Register({super.key, required this.navigation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    TextEditingController nameController = TextEditingController();
    return Center(
      child: SizedBox(
        height: 1000.h,
        width: 1000.w,
        child: Card(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'تسجيل حساب',
                  style: TextStyle(
                    color: colors.primary,
                    fontSize: 80.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40.h),
                CustomTextfeild(
                  controller: nameController,
                  title: 'أدخل اسمك بالكامل',
                  icon: Icons.person,
                  passwordAble: false,
                ),
                CustomTextfeild(
                  controller: nameController,
                  title: 'أدخل بريدك الالكتروني',
                  icon: Icons.email,
                  passwordAble: false,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomLoginButton(title: 'تسجيل الحساب'),
                    GestureDetector(
                      onTap: navigation,
                      child: Text(
                        'لديك حساب بالفعل ؟',
                        style: TextStyle(
                          color: colors.primary,
                          fontSize: 30.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: colors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70.h,),
                OtherLoginOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
