import 'package:car_selling/app/modules/login/view/widgets/custom_rich_text.dart';
import 'package:car_selling/app/modules/login/view/widgets/google_facebook_login_widget.dart';
import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:car_selling/app/widgets/common_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.cEEF2F6,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 16.w),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
            ),
            SizedBox(height: 78.h),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log in to your Account",
                        style: TextFontStyle.headline14DMSansw600c0D274E
                            .copyWith(fontSize: 24.sp),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "Welcome back! Please enter your details.",
                        style: TextFontStyle.headline14w400c6B6C6C.copyWith(
                          color: AppColors.c6B6C6C,
                        ),
                      ),
                      SizedBox(height: 26.h),
                      //============ Name Label =========//
                      CustomRichText(text: 'Name', requiredText: '*'),
                      SizedBox(height: 6.h),
                      //============ Name InputFiled =========//
                      CommonTextFormField(hintText: 'Name here'),
                      SizedBox(height: 16.h),
                      //============ Password Label =========//
                      CustomRichText(text: 'Password', requiredText: '*'),
                      SizedBox(height: 6.h),
                      //============ Password Input =========//
                      CommonTextFormField(
                        hintText: '******',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_outlined),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text("Remember Me"),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextFontStyle.headline14w400c6B6C6C
                                  .copyWith(color: AppColors.c405FF2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                            backgroundColor: AppColors.c405FF2,
                            foregroundColor: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Don\'t have an account? ',
                            style: TextFontStyle.headline12w400cFFFFFF.copyWith(
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 60.h),
                      Center(child: Text('Register with:')),
                      SizedBox(height: 16.h),
                      //============ Google and Facebook login==========//
                      GoogleFaceBookLoginWidget(),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
