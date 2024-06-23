import 'package:flutter/material.dart';

import '../../../../core/animation/Animation.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';
// import '../../../home/presentation/pages/Home.dart';
// import '../../../../auth/helper/AppRoutes.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    AnimationHelper.fadeInOut(this);


    // Future.delayed(const Duration(seconds: 3),
    //         ()=>THelperFunctions.navigateAndReplaceScreen(
    //          Home()
    //
    //            ));
  }

  @override
  void dispose() {
    AnimationHelper.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.lightContainer,
        child: Center(
          child: Hero(
            tag: "AppImg.logoImg",
            child: FadeTransition(
              opacity: AnimationHelper.animationDouble,
              child:  FlutterLogo(size: TSizes.productImageSize),
            ),
          ),
        ),
      ),
    );
  }
}
