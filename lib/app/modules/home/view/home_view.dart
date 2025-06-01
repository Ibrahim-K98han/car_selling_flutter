// ignore_for_file: deprecated_member_use

import 'package:car_selling/app/modules/home/controller/car_controller.dart';
import 'package:car_selling/app/modules/home/model/car_listing_model.dart';
import 'package:car_selling/app/modules/home/model/popular_category_model.dart';
import 'package:car_selling/app/modules/home/view/widgets/car_listing_widget.dart';
import 'package:car_selling/app/modules/home/view/widgets/carousel_slider_item.dart';
import 'package:car_selling/app/modules/home/view/widgets/category_widge_heading_widget.dart';
import 'package:car_selling/app/modules/home/view/widgets/discount_banner.dart';
import 'package:car_selling/app/modules/home/view/widgets/join_dealer_widget.dart';
import 'package:car_selling/app/modules/home/view/widgets/popular_category_widget.dart';
import 'package:car_selling/app/modules/home/view/widgets/top_dealer_container.dart';
import 'package:car_selling/app/modules/login/view/login_view.dart';
import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/app_images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import 'widgets/custom_text_form_field.dart';
import 'widgets/person_info_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CarController carController = Get.put(CarController());
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
            Obx(() {
              if (carController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else if (carController.errorMessage.isNotEmpty) {
                return Center(child: Text(carController.errorMessage.value));
              } else {
                return CarouselSlider(
                  items:
                      carController.slider.map((item) {
                        return Container(
                          height: 165.h,
                          margin: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image:
                                item.image.isEmpty
                                    ? DecorationImage(
                                      image: NetworkImage(item.image),
                                      fit: BoxFit.fill,
                                    )
                                    : DecorationImage(
                                      image: NetworkImage(
                                        'https://ih1.redbubble.net/image.4905811472.8675/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                          ),
                        );
                      }).toList(),
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
                );
              }
            }),
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
            Obx(() {
              if (carController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else if (carController.errorMessage.isNotEmpty) {
                return Center(child: Text(carController.errorMessage.value));
              } else {
                return GridView.builder(
                  padding: EdgeInsets.all(8.r),
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: carController.latestCar.length,
                  itemBuilder: (context, index) {
                    final carListing = carController.latestCar[index];
                    return CarListingWidget(
                      carImage:
                          carListing.thumbImage.isNotEmpty == false
                              ? carListing.thumbImage
                              : 'https://ih1.redbubble.net/image.4905811472.8675/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                      carCompanyName: carListing.purpose.toString(),
                      carName: carListing.title.toString(),
                      carPrice: carListing.regularPrice.toString(),
                    );
                  },
                );
              }
            }),
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
            JoinDealerWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              },
            ),
            SizedBox(height: 20.h),
            //=========== Car Listings Heading ==============//
            CategoryWidgetHeading(
              heading: 'Car Listings',
              btnText: 'View More',
              onTap: () {},
            ),

            //=========== Car Listings GridView ==============//
            Obx(() {
              if (carController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else if (carController.errorMessage.isNotEmpty) {
                return Center(child: Text(carController.errorMessage.value));
              } else {
                return GridView.builder(
                  padding: EdgeInsets.all(8.r),
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: carController.latestCar.length,
                  itemBuilder: (context, index) {
                    final carListing = carController.latestCar[index];
                    return CarListingWidget(
                      carImage:
                          carListing.thumbImage.isNotEmpty == false
                              ? carListing.thumbImage
                              : 'https://ih1.redbubble.net/image.4905811472.8675/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                      carCompanyName: carListing.purpose.toString(),
                      carName: carListing.title.toString(),
                      carPrice: carListing.regularPrice.toString(),
                    );
                  },
                );
              }
            }),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
