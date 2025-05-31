import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/app_images.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JoinDealerWidget extends StatelessWidget {
  const JoinDealerWidget({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200.h,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.joinDelarImg),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.r),
          child: Column(
            children: [
              SizedBox(height: 12.h),
              Text(
                'Join Our Dealer',
                style: TextFontStyle.headline14w400c6B6C6C.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 130.w),
                child: Divider(color: Colors.white, thickness: 3),
              ),
              SizedBox(height: 12.h),
              SizedBox(
                width: 234.w,
                child: Text(
                  textAlign: TextAlign.center,
                  'Do You Want To Car Dealer with Carbaz?',
                  style: TextFontStyle.headline18w600c0D274E.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(158.w, 45.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  backgroundColor: AppColors.c405FF2,
                ),
                onPressed: onTap,
                child: Text(
                  'Decome a Dealer',
                  style: TextFontStyle.headline14w400c6B6C6C.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ],
    );
  }
}
