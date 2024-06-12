import 'package:flutter/material.dart';
import '../../../core/theme/widget_themes/switch_theme.dart';
import '../../../features/0-intro/presentation/pages/OnboardingView.dart';
import 'package:medical_care_app/features/0-intro/presentation/pages/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../di.dart';
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
