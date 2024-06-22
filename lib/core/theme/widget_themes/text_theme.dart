import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_care_app/the.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../constants/colors.dart';
import '../theme.dart';

/// Custom Class for Light & Dark Text Themes
class AppTextTheme {
  AppTextTheme(); // To avoid creating instances
  static TextStyle? displayLarge;
  static TextStyle? displayMedium;
  static TextStyle? displaySmall;

  static TextStyle? headlineLarge;
  static TextStyle? headlineMedium;
  static TextStyle? headlineSmall;

  static TextStyle? titleLarge;
  static TextStyle? titleMedium;
  static TextStyle? titleSmall;

  static TextStyle? bodyLarge;
  static TextStyle? bodyMedium;
  static TextStyle? bodySmall;

  static TextStyle? labelLarge;
  static TextStyle? labelMedium;
  static TextStyle? labelSmall;

  // static TextStyle? TextStyle? style =>
  //     theme.isDarkModeEnabled
  //         ?style
  //         :style;

  // static TextStyle? textStyleHandlerLight(TextStyle? style) => style?.copyWith(fontSize: style.fontSize, color: style.color);
  // static TextStyle? textStyleHandlerDark(TextStyle? style) => style?.copyWith(fontSize: style.fontSize, color: style.color);

  static init(BuildContext context, ) {


    final textTheme = Theme.of(context).textTheme;


    displayLarge = textTheme.displayLarge; // 57.0
    displayMedium = textTheme.displayMedium; // 45.0
    displaySmall = textTheme.displaySmall; // 36.0

    headlineLarge =textTheme.headlineLarge; // 32.0
    headlineMedium = textTheme.headlineMedium; // 28.0
    headlineSmall = textTheme.headlineSmall; // 24.0

    titleLarge = textTheme.titleLarge; // 22.0
    titleMedium = textTheme.titleMedium; // 16.0
    titleSmall = textTheme.titleSmall; // 14.0

    bodyLarge = textTheme.bodyLarge; // 16.0
    bodyMedium = textTheme.bodyMedium; // 14.0
    bodySmall = textTheme.bodySmall; // 12.0

    labelLarge = textTheme.labelLarge; // 14.0
    labelMedium = textTheme.labelMedium; // 12.0
    labelSmall = textTheme.labelSmall; // 11.0
  }

  // static TextStyle? displayMedium = Theme.of(context1).textTheme.displayMedium;

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: AppTextTheme.displayLarge,
    displayMedium:AppTextTheme.displayMedium,
    displaySmall:AppTextTheme.displaySmall,
    headlineLarge: AppTextTheme.headlineLarge,
    headlineMedium:AppTextTheme.headlineMedium,
    headlineSmall: TextStyle(fontSize: 24.sp,color: AppColor.textPrimaryLight,fontWeight: FontWeight.bold),
    titleLarge: AppTextTheme.titleLarge,
    titleMedium: TextStyle(fontSize: 17.sp,color:WhiteColors.textDarkGrey,fontWeight: FontWeight.normal),
    titleSmall:  AppTextTheme.titleSmall,
    bodyLarge:  AppTextTheme.bodyLarge,
    bodyMedium: AppTextTheme.bodyMedium,
    bodySmall:  AppTextTheme.bodySmall,
    labelLarge:  AppTextTheme.labelLarge,
    labelMedium:  AppTextTheme.labelMedium,
    labelSmall:  AppTextTheme.labelSmall,
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: AppTextTheme.displayLarge,
    displayMedium:AppTextTheme.displayMedium,
    displaySmall:AppTextTheme.displaySmall,
    headlineLarge: AppTextTheme.headlineLarge,
    headlineMedium:AppTextTheme.headlineMedium,
    headlineSmall: TextStyle(fontSize: 24.sp,color: AppColor.textPrimaryDark, fontWeight: FontWeight.bold),
    titleLarge: AppTextTheme.titleLarge,
    titleMedium: TextStyle(fontSize: 17.sp,color:  WhiteColors.textDarkGrey, fontWeight: FontWeight.normal),
    titleSmall:  AppTextTheme.titleSmall,
    bodyLarge:  AppTextTheme.bodyLarge,
    bodyMedium: AppTextTheme.titleLarge,
    bodySmall:  AppTextTheme.bodySmall,
    labelLarge:  AppTextTheme.labelLarge,
    labelMedium:  AppTextTheme.labelMedium,
    labelSmall:  AppTextTheme.labelSmall,
  );
}
