// ignore_for_file: deprecated_member_use

import 'package:car_selling/app/modules/home/model/car_listing_model.dart';
import 'package:car_selling/app/modules/home/model/popular_category_model.dart';
import 'package:car_selling/app/modules/home/view/widgets/car_listing_widget.dart';
import 'package:car_selling/app/modules/home/view/widgets/carousel_slider_item.dart';
import 'package:car_selling/app/modules/home/view/widgets/category_widge_heading_widget.dart';
import 'package:car_selling/app/modules/home/view/widgets/discount_banner.dart';
import 'package:car_selling/app/modules/home/view/widgets/join_dealer_widget.dart';
import 'package:car_selling/app/modules/home/view/widgets/popular_category_widget.dart';
import 'package:car_selling/app/modules/home/view/widgets/top_dealer_container.dart';
import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/app_images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_text_form_field.dart';
import 'widgets/person_info_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  //============ Carousel Slider Item List========//
  final List<Widget> _item = [
    CarouselSliderItem(),
    CarouselSliderItem(),
    CarouselSliderItem(),
  ];

  final List<PopularCategoryModel> popularCarList = [
    PopularCategoryModel(
      carImage: AppImages.popularCarImg,
      carName: 'Mazda (20)',
    ),
    PopularCategoryModel(
      carImage: AppImages.chevronetCarImg,
      carName: 'Chevrolet (08)',
    ),
    PopularCategoryModel(
      carImage: AppImages.hondaCarImg,
      carName: 'Honda (12)',
    ),
    PopularCategoryModel(
      carImage: AppImages.popularCarImg,
      carName: 'Mazda (20)',
    ),
    PopularCategoryModel(
      carImage: AppImages.chevronetCarImg,
      carName: 'Chevrolet (08)',
    ),
    PopularCategoryModel(
      carImage: AppImages.hondaCarImg,
      carName: 'Honda (12)',
    ),
  ];

  final List<CarListingModel> CarListingList = [
    CarListingModel(
      carImage: AppImages.bmwCarImg,
      carCompanyName: 'BMW 4 Series',
      carName: '2020 A Cam Ford Mustang car',
      carPrice: '\$49,960',
    ),
    CarListingModel(
      carImage: AppImages.toyotaCarImg,
      carCompanyName: 'Toyota Camry',
      carName: '2019 Camf Explorer Platinum',
      carPrice: '\$74,000',
    ),
    CarListingModel(
      carImage: AppImages.fordCarImg,
      carCompanyName: 'Ford Explorer',
      carName: '2015 Shevrolet Corvette Z51',
      carPrice: '\$88,000',
    ),
    CarListingModel(
      carImage: AppImages.hyundaiCarImg,
      carCompanyName: 'Hyundai',
      carName: '2019 Adx Alfa Romeo Giulia',
      carPrice: '\$40,000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                //============ Person Info Widget==========//
                PersonInfoWidget(),

                //=========== Custom Text Form Field =========//
                CustomTextFormField(),
              ],
            ),
            //============== Show CarouselSlider ========//
            CarouselSlider(
              items: _item,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            //=========== Popular Categories Heading ==============//
            CategoryWidgetHeading(
              heading: 'Popular Categories',
              btnText: 'View More',
              onTap: () {},
            ),
            //=========== Popular Categories ListViewBuilder========//
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 100.h,
                child: ListView.builder(
                  itemCount: popularCarList.length,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final car = popularCarList[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: PopularCategoriesWidget(
                        carImage: car.carImage,
                        carName: car.carName,
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20.h),
            //=========== Feature Car Listings Heading ==============//
            CategoryWidgetHeading(
              heading: 'Feature Car Listings',
              btnText: 'View More',
              onTap: () {},
            ),

            //=========== Feature Car Listings GridView ==============//
            GridView.builder(
              padding: EdgeInsets.all(8.r),
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemCount: CarListingList.length,
              itemBuilder: (context, index) {
                final carListing = CarListingList[index];
                return CarListingWidget(
                  carImage: carListing.carImage,
                  carCompanyName: carListing.carCompanyName,
                  carName: carListing.carName,
                  carPrice: carListing.carPrice,
                );
              },
            ),
            SizedBox(height: 10.h),

            //============== Discount Banner Slider ============//
            DiscountBanner(),
            SizedBox(height: 20.h),
            //=========== Top Dealers Heading =======//
            CategoryWidgetHeading(
              heading: 'Top Dealers',
              btnText: 'View More',
              onTap: () {},
            ),
            SizedBox(height: 10.h),
            //=========== Top Dealers List View =======//
            SizedBox(
              height: 160.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return TopDealersContainer();
                },
              ),
            ),
            SizedBox(height: 20.h),
            //========== Join Dealer ============//
            JoinDealerWidget(),
            SizedBox(height: 20.h),
            //=========== Car Listings Heading ==============//
            CategoryWidgetHeading(
              heading: 'Car Listings',
              btnText: 'View More',
              onTap: () {},
            ),

            //=========== Car Listings GridView ==============//
            GridView.builder(
              padding: EdgeInsets.all(8.r),
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemCount: CarListingList.length,
              itemBuilder: (context, index) {
                final carListing = CarListingList[index];
                return CarListingWidget(
                  carImage: carListing.carImage,
                  carCompanyName: carListing.carCompanyName,
                  carName: carListing.carName,
                  carPrice: carListing.carPrice,
                );
              },
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
