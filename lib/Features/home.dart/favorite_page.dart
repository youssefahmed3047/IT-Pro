import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_pro/Shared%20Widgets/item_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});
  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Map<String, dynamic>> favoriteItems = [];
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'قائمة المنتجات المفضلة لديك',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: favoriteItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, size: 500.sp),
                  Text(
                    'ليس لديك منتجات مفضلة اضف بعض المنتجات لتظهر هنا',
                    style: TextStyle(
                      color: colors.onSurface,
                      fontSize: 45.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 220.w / 230.h,
              ),
              itemBuilder: (context, index) =>
                  ItemCard(index: index, isFavorite: true, action: () {  },),
            ),
    );
  }
}
