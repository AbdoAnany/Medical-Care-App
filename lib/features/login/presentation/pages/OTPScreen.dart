import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_care_app/core/constants/colors.dart';
import 'package:medical_care_app/core/constants/text_strings.dart';
import 'package:medical_care_app/features/home/presentation/pages/home_screen.dart';

import '../../../../app.dart';
import '../../../../core/constants/image_strings.dart';
import '../../../../core/helpers/helper_functions.dart';
import '../../../../core/theme/style.dart';
import '../../../../core/theme/widget_themes/switch_theme.dart';
import '../../../../core/widget/MainButton.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
                child: Text('أدخل رمز ال OTP',textDirection: TextDirection.rtl,
                    style: Theme.of(Get.context).textTheme.headlineSmall),
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text('تم إرسال رسالة الي هاتفك بها رمز ال OTP الخاص بك.',textDirection: TextDirection.rtl,
                  style: MyFontStyles.greyMedium18,
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 36.h),
              child: SvgPicture.asset(
                ImageApp.onBoardingLine,
                fit: BoxFit.fitWidth,
              ),
            ),
            OtpTextField(
              numberOfFields: 5,
              filled: true,
              fieldWidth: 62.742.w,

              borderRadius: BorderRadius.circular(12),
              borderColor: Colors.black87,
              borderWidth: 0,textStyle: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w700,color: Color(0xff10807E)),


              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: WhiteColors.tranperant),
                  borderRadius: BorderRadius.circular(12),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: WhiteColors.tranperant),
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: WhiteColors.tranperant),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
             fillColor: GreenColors.normalActive.withOpacity(.1),
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                // showBottomSheet(
                //   context: context,
                //   builder: (context) => Container(
                //       width: double.infinity,
                //       height: 408.h,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(30),
                //           color: Colors.white)),
                // );
              }, // end onSubmit
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
         //     لم أستلم رمز؟  أعد إرسال رمز ال OTP.
                  Text("  أعد إرسال رمز ال OTP.",textDirection: TextDirection.rtl,
                      style: MyFontStyles.blackBold12
                          .copyWith(decoration: TextDecoration.underline,color: Color(0xff10807E))),
                  Text("لم أستلم رمز ؟  ",
                      style: Theme.of(Get.context).textTheme.titleMedium?.copyWith(fontSize: 14.sp)),
                ],
              ),
            ),
            SizedBox(height: 24.h),

            MainButton(
              title: "تأكيد الرمز",
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Theme.of(Get.context).scaffoldBackgroundColor,
                  showDragHandle: false,
                  context: context,
                  builder: (context) => Container(
                      width: double.infinity,
                      height: 408.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        //  color: WhiteColors.white
                      ),
                  child: Column(children: [
                    SizedBox(height: 32.h),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Text("تم تأكيد حسابك بنجاح",
                            style:Theme.of(Get.context).textTheme.headlineSmall),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text('استمتع بخدماتنا و عروضنا الرائعة',
                          style: MyFontStyles.greyMedium18,
                          textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 32.h),
Image.asset(ImageApp.doneLogin,width: 168.w,height: 128.h,),
                    Spacer(),
                    MainButton(title: TTexts.next,
                    onPressed: () {
                      THelperFunctions.navigateAndReplaceScreen(HomeScreen());
                    },
                    )
                  ],),
                  ),
                );
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
                Text("  ليس لديك حساب ؟",
                    style: MyFontStyles.greyMedium18),
              ],
            )
          ],
        ),
      ),
    );
  }
}
