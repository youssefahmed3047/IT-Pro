import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});
  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<Map<String, dynamic>> products =
   [
    {
      'Product name': 'Playstation',
      'Product price': 20000,
      'Order date': '11 / 3 / 2026',
    },
    {
      'Product name': 'Iphone',
      'Product price': 40000,
      'Order date': '5 / 2 / 2026',
    },
    {
      'Product name': 'MacBook',
      'Product price': 60000,
      'Order date': '5 / 3 / 2026',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'منتجاتك في عربة التسوق',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: products.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, size: 500.sp),
                  SizedBox(height: 70.h),
                  Text(
                    'عربة التسوق لديك فارغة اضف بعض المنتجات',
                    style: TextStyle(
                      color: colors.onSurface,
                      fontSize: 50.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    products.length,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(onPressed: () {
                            
                          }, child: Text('حذف' , style: TextStyle(color: Colors.red),)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 200.w,
                                height: 200.h,
                                color: colors.primary,
                              ),
                              Text(
                                products[index]['Product name'],
                                style: TextStyle(
                                  color: colors.onSurface,
                                  fontSize: 45.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              verticalDivder(colors.secondary),
                              Text(
                                "${products[index]['Product price']} ج.م",
                                style: TextStyle(
                                  color: colors.onSurface,
                                  fontSize: 45.sp,
                                ),
                              ),
                              verticalDivder(colors.secondary),
                              Text(
                                "${products[index]['Order date']}",
                                style: TextStyle(
                                  color: colors.onSurface,
                                  fontSize: 45.sp,
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }

  Widget verticalDivder(Color color) {
    return Container(width: 1, height: 100.h, color: color);
  }
}
