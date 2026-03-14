import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'الملف الشخصي',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'معلوماتك الشخصيه',
              style: TextStyle(
                color: colors.secondary,
                fontSize: 50.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: double.infinity,
              height: 575.h,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      dataWithLabel(context, 'الاسم بالكامل', 'Yousef Ahmed'),
                      dataWithLabel(
                        context,
                        'البريد الالكتروني',
                        'youssefahmed3047@gmail.com',
                      ),
                      dataWithLabel(context, 'رقم الهاتف', '01152272785'),
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 30.h),
            Text(
              'خصائص المستخدم',
              style: TextStyle(
                color: colors.secondary,
                fontSize: 50.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              height: 375.h,
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colors.primary,
                          foregroundColor: colors.onPrimary,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.list, size: 70.sp),
                            Text(
                              'طلباتي',
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colors.primary,
                          foregroundColor: colors.onPrimary,
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.settings, size: 70.sp),
                            Text(
                              'الاعدادات',
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget dataWithLabel(BuildContext context, String label, String data) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: colors.secondary.withValues(alpha: 0.5)),
        ),
        Text(
          data,
          style: TextStyle(
            color: colors.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 50.sp,
          ),
        ),
        Divider(),
      ],
    );
  }
}
