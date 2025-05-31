import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidgetHeading extends StatelessWidget {
  const CategoryWidgetHeading({
    super.key,
    required this.heading,
    required this.btnText,
    required this.onTap,
  });

  final String heading;
  final String btnText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(heading, style: TextFontStyle.headline18w600c0D274E),
          TextButton(
            onPressed: onTap,
            child: Text(
              btnText,
              style: TextFontStyle.headline14w400c6B6C6C.copyWith(
                color: AppColors.c405FF2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
