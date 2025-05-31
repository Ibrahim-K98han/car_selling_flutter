
// ignore_for_file: deprecated_member_use

import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/app_icons.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 130.h, left: 20.w, right: 20.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, .5),
              blurRadius: 6.0,
              spreadRadius: 0.0,
            ),
          ],
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search here...',
    
            hintStyle: TextFontStyle.headline14w400c6B6C6C.copyWith(
              color: AppColors.cB1B1B1,
            ),
            border: InputBorder.none,
            filled: true,
            fillColor: AppColors.primaryColor,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 18,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(6.r),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all(8.r),
              child: Container(
                padding: EdgeInsets.all(10.r),
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.c0D274E,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: SvgPicture.asset(
                  AppIcons.searchIcon,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
