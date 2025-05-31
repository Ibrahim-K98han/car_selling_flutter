
import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularCategoriesWidget extends StatelessWidget {
  const PopularCategoriesWidget({
    super.key,
    required this.carImage,
    required this.carName,
  });

  final String carImage;
  final String carName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      width: 96.w,
      height: 84.h,
      decoration: BoxDecoration(color: AppColors.cF8FAFC),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(carImage, width: 64.w, height: 32.h, fit: BoxFit.cover),
          SizedBox(height: 6.h),
          Text(
            carName,
            style: TextFontStyle.headline12w400cFFFFFF.copyWith(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
