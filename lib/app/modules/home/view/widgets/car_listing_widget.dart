// ignore_for_file: deprecated_member_use

import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarListingWidget extends StatelessWidget {
  const CarListingWidget({
    super.key,
    required this.carImage,
    required this.carCompanyName,
    required this.carName,
    required this.carPrice,
  });

  final String carImage;
  final String carCompanyName;
  final String carName;
  final String carPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            offset: Offset(4, 4),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                carImage,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Divider(color: Colors.grey.shade200),
              ),
              Padding(
                padding: EdgeInsets.all(8.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      carCompanyName,
                      style: TextFontStyle.headline10w400c6B6C6C,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      carName,
                      style: TextFontStyle.headline14DMSansw600c0D274E,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      '\$$carPrice',
                      style: TextFontStyle.headline14DMSansw600c0D274E.copyWith(
                        color: AppColors.c405FF2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  // Add favorite functionality here
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
