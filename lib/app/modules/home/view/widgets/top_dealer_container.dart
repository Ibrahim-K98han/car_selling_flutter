import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/app_icons.dart';
import 'package:car_selling/app/utils/app_images.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TopDealersContainer extends StatelessWidget {
  const TopDealersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Container(
        padding: EdgeInsets.all(16.r),
        width: 260.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20.r,
                child: Image.asset(AppImages.dealarImg, fit: BoxFit.cover),
              ),
              title: Row(
                children: [
                  Text(
                    'Beach Auto Cars',
                    style: TextFontStyle.headline14DMSansw600c0D274E.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SvgPicture.asset(
                    AppIcons.verifyIcon,
                    width: 13.w,
                    height: 13.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              subtitle: RichText(
                text: TextSpan(
                  text: 'Total Cars: ',
                  style: TextFontStyle.headline12w400cFFFFFF.copyWith(
                    color: AppColors.c6B6C6C,
                  ),
                  children: [
                    TextSpan(
                      text: '800',
                      style: TextFontStyle.headline12w400cFFFFFF.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(color: Colors.grey.shade200),
            Row(
              children: [
                SvgPicture.asset(AppIcons.callIcon, width: 18.w, height: 18.h),
                SizedBox(width: 10.w),
                Text(
                  '+00 23904 0248',
                  style: TextFontStyle.headline12w400cFFFFFF.copyWith(
                    color: AppColors.c0D274E,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.locationIcon,
                  width: 18.w,
                  height: 18.h,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    '1901 Thornrid Cir Shiloh, Dhaka, BD',
                    style: TextFontStyle.headline12w400cFFFFFF.copyWith(
                      color: AppColors.c0D274E,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
