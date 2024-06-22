import 'package:flutter/material.dart';
import 'package:medical_care_app/features/0-intro/presentation/pages/SplashScreen.dart';

import '../../../features/0-intro/presentation/pages/OnboardingView.dart';

class IntroScreen extends StatefulWidget {
  static const String onBoarding = 'onBoarding';
  const IntroScreen({super.key});
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool onBoardingShow = true;
  @override
  void initState() {
    //  onBoardingShow = sl<SharedPreferences>().getBool(IntroScreen.onBoarding) ?? true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onBoardingShow ? const OnBoardingView() : const SplashScreen(),
    );
  }
}
