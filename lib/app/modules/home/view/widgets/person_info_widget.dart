import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/app_icons.dart';
import 'package:car_selling/app/utils/app_images.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PersonInfoWidget extends StatelessWidget {
  const PersonInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 150.h,
      decoration: BoxDecoration(color: AppColors.c405FF2),
      child: Padding(
        padding: EdgeInsets.only(top: 56.h, bottom: 24.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              AppImages.personImg,
              width: 44.w,
              height: 44.h,
            ),
    
            title: Text(
              'Good Morning!',
              style: TextFontStyle.headline12w400cFFFFFF,
            ),
            subtitle: Text(
              'Wilson AH',
              style: TextFontStyle.headline16w400cFFFFFF,
            ),
            trailing: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.c667FF5,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppIcons.loadingIcon,
                      width: 18.w,
                      height: 18.h,
                    ),
                  ),
                ),
                Positioned(
                  top: -8.h,
                  right: -6.w,
                  child: Container(
                    padding: EdgeInsets.all(6.r),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '0',
                      style: TextFontStyle.headline12w400cFFFFFF.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}