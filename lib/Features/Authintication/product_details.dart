import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('اسم المنتج'),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'اضافةالي عربة التسوق',
                  style: TextStyle(fontSize: 35.sp),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('طلب الأن', style: TextStyle(fontSize: 35.sp)),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
                height: 500.h,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 450.w,
                      decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              dataWithLabel(context, 'سعر المنتج', '200 ج.م'),
              Divider(),
              Text(
                "وصف المنتج",
                style: TextStyle(
                  color: colors.secondary.withValues(alpha: 0.5),
                ),
              ),
              Text(
                "الوصف الكامل",
                style: TextStyle(color: colors.secondary, fontSize: 50.sp),
              ),
              Divider(),
              Text(
                "تقييم المنتج و الاراء",
                style: TextStyle(
                  color: colors.secondary.withValues(alpha: 0.5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(children: List.generate(5, (index) => Icon(Icons.star))),
                  Text(
                    'تقييم المنتج',
                    style: TextStyle(
                      color: colors.secondary,
                      fontSize: 60.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              Text(
                'اراء المستخدمين',
                style: TextStyle(
                  color: colors.secondary,
                  fontSize: 60.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.h),
              ...List.generate(
                4,
                (index) => Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(radius: 75.r),
                            SizedBox(width: 50.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'user name',
                                  style: TextStyle(
                                    color: colors.onPrimary.withValues(
                                      alpha: 0.7,
                                    ),
                                  ),
                                ),
                                Text('راي المستخدم'),
                              ],
                            ),
                            Row(
                              children: List.generate(
                                5,
                                (index) =>
                                    Icon(Icons.star, color: colors.onPrimary),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 200.h,
                  decoration: BoxDecoration(
                    color: colors.surface,
                    border: Border.all(color: colors.onSurface),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      'رؤية جميع الاراء',
                      style: TextStyle(
                        color: colors.onSurface,
                        fontSize: 75.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget dataWithLabel(BuildContext context, String label, String data) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
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
            fontSize: 100.sp,
          ),
        ),
      ],
    );
  }
}
