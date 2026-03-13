import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatelessWidget {
  final int index;
  final bool isFavorite ;
  const ItemCard({super.key, required this.index, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Container(
        decoration: BoxDecoration(
          color: colors.onSecondary,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 200.h,
              decoration: BoxDecoration(
                color: colors.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child: Icon(Icons.image, size: 90.sp, color: colors.onSecondary),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon( isFavorite ? Icons.favorite : Icons.favorite_outline , size: 50.sp,)),
                      Text(
                        'المنتج رقم ${index + 1}',
                        style: TextStyle(
                          fontSize: 45.sp,
                          fontWeight: FontWeight.bold,
                          color: colors.secondary,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '200 ج.م',
                    style: TextStyle(color: colors.secondary, fontSize: 45.sp),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_shopping_cart),
                      ),
                      ...List.generate(
                        5,
                        (index) =>
                            Icon(Icons.star, size: 50.sp, color: Colors.amber),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
