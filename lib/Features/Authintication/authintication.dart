import 'package:flutter/material.dart';
import 'package:it_pro/Features/Authintication/login.dart';
import 'package:it_pro/Features/Authintication/register.dart';

class Authintication extends StatelessWidget {
  const Authintication({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background/background.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: PageView(
            controller: pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Login(
                navigation: () => pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastEaseInToSlowEaseOut,
                ),
              ),
              Register(
                navigation: () => pageController.previousPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastEaseInToSlowEaseOut,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
