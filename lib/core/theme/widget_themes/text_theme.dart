import 'package:flutter/material.dart';

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

  static TextStyle? textStyleHandler(TextStyle? style, theme) =>
      theme.isDarkModeEnabled
          ? textStyleHandlerDark(style)
          : textStyleHandlerLight(style);

  static TextStyle? textStyleHandlerLight(TextStyle? style) =>
      style?.copyWith(fontSize: style.fontSize, color: style.color);
  static TextStyle? textStyleHandlerDark(TextStyle? style) =>
      style?.copyWith(fontSize: style.fontSize, color: style.color);

  static init(BuildContext context, ThemeProvider theme) {
    final textTheme = Theme.of(context).textTheme;

    displayLarge = textStyleHandler(textTheme.displayLarge, theme); // 57.0
    displayMedium = textStyleHandler(textTheme.displayMedium, theme); // 45.0
    displaySmall = textStyleHandler(textTheme.displaySmall, theme); // 36.0

    headlineLarge = textStyleHandler(textTheme.headlineLarge, theme); // 32.0
    headlineMedium = textStyleHandler(textTheme.headlineMedium, theme); // 28.0
    headlineSmall = textStyleHandler(textTheme.headlineSmall, theme); // 24.0

    titleLarge = textStyleHandler(textTheme.titleLarge, theme); // 22.0
    titleMedium = textStyleHandler(textTheme.titleMedium, theme); // 16.0
    titleSmall = textStyleHandler(textTheme.titleSmall, theme); // 14.0

    bodyLarge = textStyleHandler(textTheme.bodyLarge, theme); // 16.0
    bodyMedium = textStyleHandler(textTheme.bodyMedium, theme); // 14.0
    bodySmall = textStyleHandler(textTheme.bodySmall, theme); // 12.0

    labelLarge = textStyleHandler(textTheme.labelLarge, theme); // 14.0
    labelMedium = textStyleHandler(textTheme.labelMedium, theme); // 12.0
    labelSmall = textStyleHandler(textTheme.labelSmall, theme); // 11.0
  }

  // static TextStyle? displayMedium = Theme.of(context1).textTheme.displayMedium;

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: AppTextTheme.displayLarge,
    displayMedium:AppTextTheme.displayMedium,
    displaySmall:AppTextTheme.displaySmall,
    headlineLarge: AppTextTheme.headlineLarge,
    headlineMedium:AppTextTheme.headlineMedium,
    headlineSmall:  AppTextTheme.headlineSmall,
    titleLarge: AppTextTheme.titleLarge,
    titleMedium: AppTextTheme.titleMedium,
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
    headlineSmall:  AppTextTheme.headlineSmall,
    titleLarge: AppTextTheme.titleLarge,
    titleMedium: AppTextTheme.titleMedium,
    titleSmall:  AppTextTheme.titleSmall,
    bodyLarge:  AppTextTheme.bodyLarge,
    bodyMedium: AppTextTheme.titleLarge,
    bodySmall:  AppTextTheme.bodySmall,
    labelLarge:  AppTextTheme.labelLarge,
    labelMedium:  AppTextTheme.labelMedium,
    labelSmall:  AppTextTheme.labelSmall,
  );
}
