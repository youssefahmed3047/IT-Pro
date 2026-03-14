import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_pro/Features/Authintication/product_details.dart';
import 'package:it_pro/Shared Widgets/custom_textfeild.dart';
import 'package:it_pro/Shared%20Widgets/item_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              centerTitle: true,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, size: 80.sp),
              ),
              title: CustomTextfeild(
                controller: searchController,
                title: 'ادخل اسم المنتج او الرقم التعريفي الخاص به',
                icon: Icons.search,
                passwordAble: false,
                action: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(50.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'اهم خدماتنا',
                      style: TextStyle(
                        color: colors.onSurface,
                        fontSize: 70.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    customButton(
                      title: 'اهم المنتجات و اكسسوارات الكمبيوتر',
                      image: 'assets/background/AirPods Pro Max.png',
                    ),

                    customButton(
                      title: 'بيع و شراء اجهزة الكمبيوتر و اللابتوب',
                      image: 'assets/background/MacBook.png',
                    ),

                    customButton(
                      title: 'الفروع و خدمات الصيانه',
                      image: 'assets/background/Settings.png',
                    ),

                    Divider(),

                    Text(
                      'أحدث المنتجات',
                      style: TextStyle(
                        color: colors.onSurface,
                        fontSize: 70.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                      ItemCard(index: index, isFavorite: false, action: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetails(),));
                      }),
                  childCount: 20,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 200.w / 230.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customButton({required String title, required String image}) {
    final colors = Theme.of(context).colorScheme;

    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: Container(
          width: double.infinity,
          height: 120.h,
          decoration: BoxDecoration(
            color: colors.primary,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: AssetImage(image), color: colors.onPrimary),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
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
