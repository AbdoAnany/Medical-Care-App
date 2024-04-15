



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_care_app/core/constants/colors.dart';

import '../constants/sizes.dart';
class CustomFontWeight {
  static const FontWeight tajawalThin =  FontWeight.w900;
  static const FontWeight tajawalExtraBold =  FontWeight.w800;
  static const FontWeight tajawalBold = FontWeight.w700;
  static const FontWeight tajawalExtraLight = FontWeight.w200;
  static const FontWeight tajawalLight = FontWeight.w300;
  static const FontWeight tajawalRegular= FontWeight.w500;
  static const FontWeight tajawalMedium= FontWeight.w600;

}

class CustomFontStyles {
  static const String primaryFontFamily = 'Tajawal';
  static const String secondaryFontFamily = 'Tajawal';

  static TextStyle title1Bold24 = TextStyle(
    fontFamily: primaryFontFamily,

    fontWeight: CustomFontWeight.tajawalBold,
    fontSize: 24.w,
  );

  static TextStyle title2Bold18 = TextStyle(
    fontFamily: primaryFontFamily,
    fontWeight: CustomFontWeight.tajawalBold,
    fontSize: 18.w,
  );

  static TextStyle title2SemiBold18 = TextStyle(
    fontFamily: primaryFontFamily,
    fontWeight: CustomFontWeight.tajawalMedium,
    fontSize: 18.w,
  );

  static TextStyle title3SemiBold16 = TextStyle(
    fontFamily: primaryFontFamily,
    color: WhiteColors.textDarkGrey,
    fontWeight: CustomFontWeight.tajawalMedium,
    fontSize: 16.w,

  ); static TextStyle title3WhiteSemiBold16 = TextStyle(
    fontFamily: primaryFontFamily,
    color: WhiteColors.white,
    fontWeight: CustomFontWeight.tajawalMedium,
    fontSize: 16.w,

  );static TextStyle title3MainSemiBold16 = TextStyle(
    fontFamily: primaryFontFamily,
    color: AppColor.primary,
    fontWeight: CustomFontWeight.tajawalMedium,
    fontSize: 16.w,
  );

  static TextStyle subheading1Medium18 = TextStyle(
    fontFamily: primaryFontFamily,
    fontWeight: CustomFontWeight.tajawalRegular,
    color: WhiteColors.textDarkGrey,
    fontSize: 18.w,
  );

  static TextStyle subheading2Regular14 = TextStyle(
    fontFamily: primaryFontFamily,
    fontWeight: CustomFontWeight.tajawalRegular,
    fontSize: 14.w,
  );

  static TextStyle subheading3Regular18 = TextStyle(
    fontFamily: primaryFontFamily,
    fontWeight: CustomFontWeight.tajawalRegular,
    fontSize: 18.w,
  );

  static TextStyle paragraphRegular15 = TextStyle(
    fontFamily: primaryFontFamily,
    fontWeight: CustomFontWeight.tajawalRegular,
    color: WhiteColors.textDarkGrey,
    fontSize: 15.w,
  );  static TextStyle paragraphRegular14 = TextStyle(
    fontFamily: primaryFontFamily,
    fontWeight: CustomFontWeight.tajawalRegular,
    color: WhiteColors.textDarkGrey,

    fontSize: 14.w,
  );
}

// class CustomFontStyles {
//   static const String primaryFontFamily = 'Tajawal';
//   static const String secondaryFontFamily = 'Tajawal';
//
//   static const TextStyle title1Bold24 = TextStyle(
//     fontFamily: primaryFontFamily,
//     fontWeight: FontWeight.bold,
//     fontSize: 24,
//   );
//
//   static const TextStyle title2Bold18 = TextStyle(
//     fontFamily: primaryFontFamily,
//     fontWeight: FontWeight.bold,
//     fontSize: 18,
//   );
//
//   static const TextStyle title2SemiBold18 = TextStyle(
//     fontFamily: primaryFontFamily,
//     fontWeight: FontWeight.w600,
//     fontSize: 18,
//   );
//
//   static const TextStyle title3SemiBold16 = TextStyle(
//     fontFamily: primaryFontFamily,
//     fontWeight: FontWeight.w600,
//     fontSize: 16,
//   );
//
//   static const TextStyle subheading1Medium16 = TextStyle(
//     fontFamily: primaryFontFamily,
//     fontWeight: FontWeight.w500,
//     fontSize: 16,
//   );
//
//   static const TextStyle subheading2Regular14 = TextStyle(
//     fontFamily: primaryFontFamily,
//     fontWeight: FontWeight.normal,
//     fontSize: 14,
//   );
//
//   static const TextStyle subheading3Regular18 = TextStyle(
//     fontFamily: primaryFontFamily,
//     fontWeight: FontWeight.normal,
//     fontSize: 18,
//   );
//
//   static const TextStyle paragraphRegular14 = TextStyle(
//     fontFamily: primaryFontFamily,
//     fontWeight: FontWeight.normal,
//     fontSize: 14,
//   );
// }
