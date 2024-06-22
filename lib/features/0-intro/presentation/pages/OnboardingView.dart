import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_care_app/core/constants/image_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../di.dart';
import '../../../../core/constants/text_strings.dart';
import '../../../../core/helpers/helper_functions.dart';
import '../../../../core/theme/style.dart';
import '../../../../core/theme/widget_themes/switch_theme.dart';
import '../../../../core/widget/MainButton.dart';
import '../../../home/presentation/pages/home_screen.dart';
import '../Introductory_screen.dart';
import '../intro_screen.dart';
import '../widget/OnBoardingItems.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final controller = OnBoardingItems();
  final pageController = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          //    color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Skip Button

              TextButton(
                  // onPressed: ()=>pageController.animateToPage(controller.items.length-1, duration: const Duration(milliseconds: 600),  curve: Curves.easeIn,),
                  onPressed: () =>
                      NavigationHelper.goToAndReplace(HomeScreen()),
                  child: Text(
                    '< ' + TTexts.skip,
                    style: MyFontStyles.greySemiBold16,
                  )),

              //Indicator

              //Next Button

              TextButton(
                  onPressed: () => pageController.previousPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeIn),
                  child: Text(
                    TTexts.pre,
                    style: MyFontStyles.greySemiBold16,
                  )),
            ],
          ),
        ),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 600),
        child: PageView(
          controller: pageController,
          reverse: true,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == controller.items.length - 1;
            });
          },
          children: List.generate(3, ((index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                SizedBox(height: 80.h),
                Center(
                  child: SizedBox(
                      height: 194.58.h,
                      width: 265.23.w,
                      child: Image.asset(controller.items[index].image)),
                ),
                SizedBox(height: 85.h),
                Center(
                  child: SizedBox(
                    height: 68.5.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SvgPicture.asset(
                          ImageApp.onBoardingLine,
                          fit: BoxFit.fitWidth,
                        ),
                        ClipRect(
                          child: Align(
                              alignment: Alignment.bottomRight,
                              widthFactor: (index + 3 / 3.0) / 3.0,
                              child: SvgPicture.asset(
                                ImageApp.onBoardingLine3,
                                fit: BoxFit.fitWidth,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 42.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(controller.items[index].title,
                      style:Theme.of(context).textTheme.headlineSmall
                   //   MyFontStyles.blackBold24
                  ),
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.only(right: 16.w, left: 54.w),
                  child: Text(controller.items[index].descriptions,
                      style: MyFontStyles.greyMedium18,
                      textAlign: TextAlign.end),
                ),
                SizedBox(height: 64.h),
                Center(
                    child: MainButton(
                  title: TTexts.next,
                  onPressed: () async {
                    sl<SharedPreferences>()
                        .setBool(IntroScreen.onBoarding, false);
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn);

                    if (!isLastPage) return;
                    THelperFunctions.navigateAndReplaceScreen(
                        IntroductoryScreen());
                  },
                ))
              ],
            );
          })),
        ),
      ),
    ));
  }
}
