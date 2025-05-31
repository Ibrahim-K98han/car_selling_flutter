
import 'package:car_selling/app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GoogleFaceBookLoginWidget extends StatelessWidget {
  const GoogleFaceBookLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.googleIcon),
          label: Text("Google"),
    
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
              vertical: 10.h,
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            side: BorderSide(color: Colors.grey),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
        SizedBox(width: 16),
        ElevatedButton.icon(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.facebookIcon),
          label: Text("Facebook"),
    
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
              vertical: 10.h,
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            side: BorderSide(color: Colors.grey),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
        ),
      ],
    );
  }
}
