import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});
  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<Map<String, dynamic>> products = [
    {
      'Product name': 'Playstation',
      'Product price': 20000,
      'Order date': '11 / 3 / 2026',
      'Quantity': 1,
    },
    {
      'Product name': 'Iphone',
      'Product price': 40000,
      'Order date': '5 / 2 / 2026',
      'Quantity': 1,
    },
    {
      'Product name': 'MacBook',
      'Product price': 60000,
      'Order date': '5 / 3 / 2026',
      'Quantity': 2,
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
                child: Center(
                  child: Column(
                    children: [
                      Column(
                        children: List.generate(
                          products.length,
                          (index) => Card(
                            child: Row(
                              children: [
                                Container(
                                  width: 300.w,
                                  height: 300.h,
                                  decoration: BoxDecoration(
                                    color: colors.primary,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.r),
                                      topLeft: Radius.circular(20.r),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 250.w,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              overflow: TextOverflow.ellipsis,
                                              products[index]['Product name'],
                                              style: TextStyle(
                                                color: colors.secondary,
                                                fontSize: 50.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "${products[index]['Product price']} ج.م",
                                              style: TextStyle(
                                                color: colors.secondary,
                                                fontSize: 50.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 50.w,),
                                      Container(width: 1, height: 100.h, color: colors.primary.withValues(alpha: 0.5)),
                                      SizedBox(width: 50.w,),
                                      Column(
                                        children: [
                                          Text(
                                            'الكمية المطلوبه',
                                            style: TextStyle(
                                              color: colors.secondary,
                                              fontSize: 40.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "${products[index]['Quantity']}",
                                            style: TextStyle(
                                              color: colors.secondary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.add),
                                                color: Colors.green,
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.minimize),
                                                color: Colors.red,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'تأكيد طلبك',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
