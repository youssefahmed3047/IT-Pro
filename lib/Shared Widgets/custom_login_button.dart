import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoginButton extends StatelessWidget {
  final String title ;
  final bool isLoading ;
  final VoidCallback action;
  const CustomLoginButton({super.key, required this.title, required this.isLoading, required this.action});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: TextButton(
        onPressed: isLoading ? null : action,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastEaseInToSlowEaseOut,
          width: isLoading ? 110.w :250.w,
          height: isLoading ? 110.h : 80.h,
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(isLoading ? 1000.r : 10.r ),
          ),
          child: Center(
            child: isLoading ?  CircularProgressIndicator(color: colors.onPrimary, strokeWidth: 3,) : Text(
              title,
              style: TextStyle(
                color: colors.onPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
