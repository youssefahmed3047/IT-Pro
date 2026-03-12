import 'package:flutter/material.dart';
import 'package:it_pro/Features/home.dart/home.dart';
import 'package:it_pro/Features/home.dart/shopping_cart.dart';

class PagesCenter extends StatefulWidget {
  const PagesCenter({super.key});
  @override
  State<PagesCenter> createState() => _PagesCenterState();
}

class _PagesCenterState extends State<PagesCenter> {
  PageController pageController = PageController();
  int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) => setState(() {
          currentIndex = value ;
        }),
        controller: pageController,
        children: [
          Home(),
          ShoppingCart()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 500),
            curve: Curves.fastEaseInToSlowEaseOut,
          );
          setState(() {
            currentIndex = value ;
          });
        },
        currentIndex: currentIndex,
        unselectedItemColor: Theme.of(
          context,
        ).colorScheme.secondary.withValues(alpha: 0.5),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الصفحة الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'عربة التسوق',
          ),
        ],
      ),
    );
  }
}
