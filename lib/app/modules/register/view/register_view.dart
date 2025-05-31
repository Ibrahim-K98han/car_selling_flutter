import 'package:car_selling/app/modules/login/view/login_view.dart';
import 'package:car_selling/app/modules/login/view/widgets/custom_rich_text.dart';
import 'package:car_selling/app/modules/login/view/widgets/google_facebook_login_widget.dart';
import 'package:car_selling/app/utils/app_colors.dart';
import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:car_selling/app/widgets/common_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
            SizedBox(height: 30.h),
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
                        "Sign Up to your Account",
                        style: TextFontStyle.headline14DMSansw600c0D274E
                            .copyWith(fontSize: 24.sp),
                      ),
                      SizedBox(height: 12.h),
                      //============ Name Label =========//
                      CustomRichText(text: 'Name', requiredText: '*'),
                      SizedBox(height: 6.h),
                      //============ Name InputFiled =========//
                      CommonTextFormField(hintText: 'Name here'),
                      SizedBox(height: 12.h),
                      //============ Email Address Label =========//
                      CustomRichText(text: 'Email Address', requiredText: '*'),
                      SizedBox(height: 6.h),
                      //============ Email Address InputFiled =========//
                      CommonTextFormField(hintText: 'Email here'),
                      SizedBox(height: 12.h),
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
                      SizedBox(height: 12.h),
                      //============ Confirm Password Label =========//
                      CustomRichText(
                        text: 'Confirm Password',
                        requiredText: '*',
                      ),
                      SizedBox(height: 6.h),
                      //============ Confirm Password Input =========//
                      CommonTextFormField(
                        hintText: '******',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_outlined),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          SizedBox(
                            width: 260.w,
                            child: CustomRichText(
                              text: 'By signing up, you agree to our ',
                              requiredText:
                                  'Terms of Service and Privacy Policy.',
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
                            "Sign Up",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ),
                            );
                          },
                          child: RichText(
                            text: TextSpan(
                              text: 'Already have an account? ',
                              style: TextFontStyle.headline12w400cFFFFFF
                                  .copyWith(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Log In',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
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
