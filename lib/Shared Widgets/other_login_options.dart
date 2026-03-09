import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherLoginOptions extends StatelessWidget {
  const OtherLoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme ;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Divider(color: colors.primary.withValues(alpha: 0.5)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'أو سجل الدخول باستخدام',
                style: TextStyle(color: colors.primary),
              ),
            ),
            Expanded(
              child: Divider(color: colors.primary.withValues(alpha: 0.5)),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        TextButton(
          onPressed: () {},
          child: Container(
            width: double.infinity,
            height: 120.h,
            decoration: BoxDecoration(
              color: colors.onSecondary,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.google,
                    size: 45.sp,
                    color: colors.secondary,
                  ),
                  Text(
                    'سجل الدخول باستخدام جوجل',
                    style: TextStyle(
                      color: colors.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
