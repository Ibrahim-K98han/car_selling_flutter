// ignore_for_file: deprecated_member_use

import 'package:car_selling/app/modules/home/view/home_view.dart';
import 'package:car_selling/app/modules/more/view/more_view.dart';
import 'package:car_selling/app/modules/save/view/save_view.dart';
import 'package:car_selling/app/modules/search/view/search_view.dart';
import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/app_icons.dart';
import 'package:car_selling/app/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int _selectedIndex = 0;

  //=============== All Screen List=================//
  final List<Widget> _screens = [
    HomeView(),
    SearchView(),
    SaveView(),
    MoreView(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            selectedItemColor: AppColors.c405FF2,
            showUnselectedLabels: true,
            selectedLabelStyle: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
            ),
            //============ Custom Bottom Navbar Item ===============//
            items: [
              bottomNavBarWidget(
                color:
                    _selectedIndex == 0 ? AppColors.c405FF2 : AppColors.c6B6C6C,
                label: 'Home',
                selectedIndex:
                    _selectedIndex == 0 ? AppIcons.homeIcon : AppIcons.homeIcon,
              ),
              bottomNavBarWidget(
                color:
                    _selectedIndex == 1 ? AppColors.c405FF2 : AppColors.c6B6C6C,
                label: 'Search',
                selectedIndex:
                    _selectedIndex == 1
                        ? AppIcons.searchIcon
                        : AppIcons.searchIcon,
              ),
              bottomNavBarWidget(
                color:
                    _selectedIndex == 2 ? AppColors.c405FF2 : AppColors.c6B6C6C,
                label: 'Save',
                selectedIndex:
                    _selectedIndex == 2
                        ? AppIcons.favouriteIcon
                        : AppIcons.favouriteIcon,
              ),
              bottomNavBarWidget(
                color:
                    _selectedIndex == 3 ? AppColors.c405FF2 : AppColors.c6B6C6C,
                label: 'More',
                selectedIndex:
                    _selectedIndex == 3 ? AppIcons.menuIcon : AppIcons.menuIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
