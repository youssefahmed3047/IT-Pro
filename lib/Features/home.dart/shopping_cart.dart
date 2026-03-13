import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});
  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<Map<String, dynamic>> products = []; // [
  //   {
  //     'Product name': 'Playstation',
  //     'Product price': 20000,
  //     'Order date': '11 / 3 / 2026',
  //     'Quantity': 1,
  //   },
  //   {
  //     'Product name': 'Iphone',
  //     'Product price': 40000,
  //     'Order date': '5 / 2 / 2026',
  //     'Quantity': 1,
  //   },
  //   {
  //     'Product name': 'MacBook',
  //     'Product price': 60000,
  //     'Order date': '5 / 3 / 2026',
  //     'Quantity': 2,
  //   },
  // ];
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
          : Stack(
            children:[ Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: List.generate(
                        products.length,
                        (index) => Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 250.h,
                                decoration: BoxDecoration(
                                  color: colors.primary,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.r),
                                    topLeft: Radius.circular(30.r),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 300.w,
                                      child: Column(
                                        children: [
                                          Text(
                                            overflow: TextOverflow.ellipsis,
                                            products[index]['Product name'],
                                            style: TextStyle(
                                              color: colors.secondary,
                                              fontSize: 45.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "${products[index]['Product price']} ج.م",
                                            style: TextStyle(
                                              color: colors.secondary,
                                              fontSize: 45.sp,
                                            ),
                                          ),
                                          SizedBox(height: 20.h),
                                        ],
                                      ),
                                    ),
                                    verticalDivder(colors.primary),
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: colors.primary,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.r),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                              8.0,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "${products[index]['Quantity']}",
                                                  style: TextStyle(
                                                    fontSize: 60.sp,
                                                    color: colors.secondary,
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.add,
                                                        size: 50.sp,
                                                      ),
                                                      color: Colors.green,
                                                    ),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.minimize,
                                                        size: 50.sp,
                                                      ),
                                                      color: Colors.red,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  'الكمية المطلوبه',
                                                  style: TextStyle(
                                                    color: colors.secondary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('حذف من عربة التسوق'),
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
                  ),
                ),
              ),
                Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'تأكيد طلبك',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.sp),
              ),
            ),
          ),
            ]
          ),
    );
  }

  Widget verticalDivder(Color color) {
    return Container(width: 1, height: 100.h, color: color);
  }
}
