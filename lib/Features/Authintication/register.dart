import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_pro/Shared%20Widgets/custom_login_button.dart';
import 'package:it_pro/Shared%20Widgets/custom_textfeild.dart';
import 'package:it_pro/Shared%20Widgets/other_login_options.dart';

class Register extends StatefulWidget {
  final GestureTapCallback navigation;
  const Register({super.key, required this.navigation});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isLoading = false ;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: SizedBox(
        height: 1000.h,
        width: 1000.w,
        child: Card(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
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
                  passwordAble: false, action: null,
                ),
                CustomTextfeild(
                  controller: emailController,
                  title: 'أدخل بريدك الالكتروني',
                  icon: Icons.email,
                  passwordAble: false, action: null,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 250.w,),
                    CustomLoginButton(title: 'تسجيل الحساب', isLoading: isLoading, action: () => setState(() {
                      isLoading = true ;
                    }),),
                    GestureDetector(
                      onTap: widget.navigation,
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
                SizedBox(height: 70.h),
                OtherLoginOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
