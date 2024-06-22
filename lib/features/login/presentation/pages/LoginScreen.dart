import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_care_app/core/constants/colors.dart';

import '../../../../core/constants/image_strings.dart';
import '../../../../core/helpers/helper_functions.dart';
import '../../../../core/theme/style.dart';
import '../../../../core/theme/widget_themes/switch_theme.dart';
import '../../../../core/widget/MainButton.dart';
import 'OTPScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 48.h,
            ),
            Center(
                child: Image.asset(
              ImageApp.logoWithName,
              height: 98.h,
              width: 60.w,
            )),
            SizedBox(
              height: 38.h,
            ),

            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text('تسجيل الدخول', style:Theme.of(context).textTheme.headlineSmall),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text('سجل الدخول للإستمتاع بتجربة ممتعة الخصومات.',
                  style: MyFontStyles.greyMedium18,
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: 58.h),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 6.h),
                  child: Text("رقم الهاتف", style:Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 14.sp)),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.h),
              child: TextFormField(
                keyboardType: TextInputType.phone,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700,color: Color(0xffB4B4B4)),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),



                  hintStyle: MyFontStyles.greyMedium18,
                  hintText: "                         ادخل رقم الهاتف الخاص بك",
                  prefixIcon: Container(
                    width: 90.w,
                    padding:EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    child: Row(
                      children: [


                        Image.asset(
                          ImageApp.egFlag,
                          height: 24.w,
                          width: 24.w,
                        ),     SizedBox(
                          width: 8.w,
                        ),  Text("+20",
                            style: TextStyle(
                              color: Color(0xff4E4E4E),
                              fontSize: 14.w,
                            )),
                      ],
                    ),
                  ),


                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: WhiteColors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // Add more decoration..
                ),
              ),
            ),
            SizedBox(height: 24.h),
            MainButton(
              title: "تسجيل الدخول",
              onPressed: () {
                THelperFunctions.navigateToScreen(const OTPScreen());
              },
            ),
            SizedBox(height: 240.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("إنشاء حساب",
                    style: MyFontStyles.primarySemiBold16
                        .copyWith(decoration: TextDecoration.underline)),
                Text("  ليس لديك حساب ؟", style: MyFontStyles.greyMedium18),
              ],
            )
          ],
        ),
      ),
    );
  }
}
