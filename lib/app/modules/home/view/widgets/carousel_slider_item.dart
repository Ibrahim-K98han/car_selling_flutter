
import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/app_images.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: 335.w,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.carBgImg)),
      ),
      child: Column(
        children: [
          SizedBox(height: 35.h),
          Text(
            'Find Your Perfect Car',
            style: TextFontStyle.headline14w400c6B6C6C.copyWith(
              color: AppColors.primaryColor,
            ),
          ),

          Text(
            'World of Luxury Automobiles',
            style: TextFontStyle.headline20w700cFFFFFF,
          ),
          Image.asset(
            AppImages.carImg,
            width: 250.w,
            height: 70.h,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
