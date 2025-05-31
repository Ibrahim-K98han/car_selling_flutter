// ignore_for_file: deprecated_member_use

import 'package:car_selling/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem bottomNavBarWidget({
  required Color color,
  required String selectedIndex,
  required String label,
}) {
  return BottomNavigationBarItem(
    backgroundColor: AppColors.primaryColor,
    icon: Padding(
      padding: EdgeInsets.only(top: 4.h, bottom: 4.h),
      child: SvgPicture.asset(color: color, selectedIndex),
    ),
    label: label,
  );
}
