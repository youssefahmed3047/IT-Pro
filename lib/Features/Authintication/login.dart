import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_pro/Features/home.dart/pages_center.dart';
import 'package:it_pro/Shared%20Widgets/custom_login_button.dart';
import 'package:it_pro/Shared%20Widgets/custom_textfeild.dart';
import 'package:it_pro/Shared%20Widgets/other_login_options.dart';

class Login extends StatefulWidget {
  final GestureTapCallback navigation;
  const Login({super.key, required this.navigation});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Center(
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
                    'تسجيل الدخول',
                    style: TextStyle(
                      color: colors.primary,
                      fontSize: 80.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  CustomTextfeild(
                    controller: emailController,
                    title: 'ادخل بريدك الالكتروني',
                    icon: Icons.email,
                    passwordAble: false,
                    action: null,
                  ),
                  CustomTextfeild(
                    controller: passwordController,
                    title: 'ادخل كلمة السر',
                    icon: Icons.password,
                    passwordAble: true,
                    action: null,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'استعادة كلمة المرور',
                        style: TextStyle(
                          color: colors.primary,
                          fontSize: 30.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: colors.primary,
                        ),
                      ),
                      Center(
                        child: CustomLoginButton(
                          title: 'تسجيل الدخول',
                          isLoading: isLoading,
                          action: () async {
                            setState(() {
                              isLoading = true;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PagesCenter(),
                              ),
                            );
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.navigation,
                        child: Text(
                          'IT PRO سجل الأن علي',
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: colors.primary,
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
      ),
    );
  }
}
