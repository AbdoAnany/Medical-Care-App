import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TIconTheme {
  TIconTheme._();

  static IconThemeData lightIconTheme =
      IconThemeData(color: AppColor.black, size: TSizes.iconMd);
  static IconThemeData darkIconTheme =
      IconThemeData(color: AppColor.white, size: TSizes.iconMd);
}
