import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfeild extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  final IconData icon;
  final bool passwordAble;
  const CustomTextfeild({
    super.key,
    required this.controller,
    required this.title,
    required this.icon,
    required this.passwordAble,
  });
  @override
  State<CustomTextfeild> createState() => _CustomTextfeildState();
}

class _CustomTextfeildState extends State<CustomTextfeild> {
  bool obseqcure = true;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: TextField(
        obscureText: obseqcure,
        controller: widget.controller,
        style: TextStyle(color: colors.primary),
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          labelText: widget.title,
          filled: true,
          fillColor: colors.onSurface.withValues(alpha: 0.2),
          suffixIcon: Icon(widget.icon),
          prefixIcon: widget.passwordAble
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obseqcure = !obseqcure;
                    });
                  },
                  icon: Icon(
                    obseqcure
                        ? Icons.visibility_off_sharp
                        : Icons.visibility_sharp,
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(color: colors.secondary),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(color: colors.primary, width: 5.w),
          ),
        ),
      ),
    );
  }
}
