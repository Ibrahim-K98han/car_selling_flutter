import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextFormField extends StatelessWidget {
  const CommonTextFormField({
    super.key,
    this.suffixIcon,
    required this.hintText,
  });

  final Widget? suffixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextFontStyle.headline14w400c6B6C6C.copyWith(
            color: AppColors.cB1B1B1,
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: AppColors.cF8FAFC,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(6.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
      ),
    );
  }
}
