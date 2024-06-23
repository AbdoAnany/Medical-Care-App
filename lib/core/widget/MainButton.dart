

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          color: AppColors.primary
      ),
      //  width: MediaQuery.of(context).size.width * .9,
      //   height: TSizes.buttonHeight,
      child: TextButton(
          onPressed: onPressed,

          child:  Text('$title',style:
          MyFontStyles.whiteSemiBold16
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
          border: Border.all(color: AppColors.primary.withOpacity(.3)),
          color: AppColors.primary.withOpacity(.07)
      ),
      //  width: MediaQuery.of(context).size.width * .9,
      //   height: TSizes.buttonHeight,
      child: TextButton(
          onPressed: onPressed,

          child:  Text('$title',style:
          MyFontStyles.primarySemiBold16
            //    TextStyle(color: Colors.white),
          )),
    );
  }
}
