import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medical_care_app/core/constants/colors.dart';

import '../../../../core/constants/image_strings.dart';
import '../../../../core/helpers/helper_functions.dart';
import '../../../../core/theme/style.dart';
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
                child: Text('تسجيل الدخول', style: MyFontStyles.blackBold24),
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 6.h),
                  child: Text("رقم الهاتف", style: MyFontStyles.blackBold14),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.h),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),

                    hintText: "ادخل رقم الهاتف الخاص بك",
                    suffixIcon: Container(
                      width: 70.w,
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("+20",
                              style: TextStyle(
                                fontSize: 14.w,
                              )),
                          SizedBox(
                            width: 8.w,
                          ),
                          Image.asset(
                            ImageApp.egFlag,
                            height: 24.w,
                            width: 24.w,
                          ),
                        ],
                      ),
                    ),

                    hintStyle: MyFontStyles.greyMedium18,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: WhiteColors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Add more decoration..
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            MainButton(
              title: "تسجيل الدخول",
              onPressed: () {
                THelperFunctions.navigateToScreen(OTPScreen());
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
