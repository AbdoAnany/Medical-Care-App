

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/colors.dart';
import '../theme/style.dart';

class MainButton extends StatelessWidget {
   MainButton({super.key,this.onPressed,this.title=''});
   void Function()? onPressed;
   String? title;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 56.h,
      width: double.infinity,
      margin: EdgeInsets.all(16),
      padding:EdgeInsets.symmetric(horizontal: 24.w,vertical: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColor.primary
      ),
      //  width: MediaQuery.of(context).size.width * .9,
      //   height: TSizes.buttonHeight,
      child: TextButton(
          onPressed: onPressed,

          child:  Text('$title',style:
          CustomFontStyles.title3WhiteSemiBold16
            //    TextStyle(color: Colors.white),
          )),
    );
  }
}


class MainButtonOutLine extends StatelessWidget {
  MainButtonOutLine({super.key,this.onPressed,this.title=''});
  void Function()? onPressed;
  String? title;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 56.h,
      width: double.infinity,
      margin: EdgeInsets.all(16),
      padding:EdgeInsets.symmetric(horizontal: 24.w,vertical: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.primary),
          color: AppColor.primary.withOpacity(.3)
      ),
      //  width: MediaQuery.of(context).size.width * .9,
      //   height: TSizes.buttonHeight,
      child: TextButton(
          onPressed: onPressed,

          child:  Text('$title',style:
          CustomFontStyles.title3MainSemiBold16
            //    TextStyle(color: Colors.white),
          )),
    );
  }
}
