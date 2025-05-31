import 'package:car_selling/app/utils/app_images.dart' show AppImages;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    show AnimatedSmoothIndicator, ExpandingDotsEffect;

class DiscountBanner extends StatefulWidget {
  const DiscountBanner({super.key});

  @override
  State<DiscountBanner> createState() => _DiscountBannerState();
}

class _DiscountBannerState extends State<DiscountBanner> {
  int bannerActiveIndex = 0;
  final List<String> discountBannerImg = [
    AppImages.bannerImg,
    AppImages.bannerImg,
    AppImages.bannerImg,
    AppImages.bannerImg,
    AppImages.bannerImg,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items:
              discountBannerImg.map((imageUrl) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }).toList(),
          options: CarouselOptions(
            height: 132.h,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                bannerActiveIndex = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 10.h,
          child: AnimatedSmoothIndicator(
            activeIndex: bannerActiveIndex,
            count: discountBannerImg.length,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotColor: Colors.white,
              dotHeight: 8.h,
              dotWidth: 8.w,
            ),
          ),
        ),
      ],
    );
  }
}
