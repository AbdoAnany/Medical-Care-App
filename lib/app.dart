import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/constants/sizes.dart';
import 'core/constants/text_strings.dart';
import 'core/theme/theme.dart';
import 'core/theme/widget_themes/text_theme.dart';
import 'features/0-intro/presentation/intro_screen.dart';

class Get {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;
  static NavigatorState get navigator => navigatorKey.currentState!;
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
          // BlocProvider(create: (context) => LoginCubit( )),
          //     BlocProvider(create: (context) => HomeBloc()),
        ],
        child: Consumer<ThemeProvider>(builder: (context, them, c) {
          AppTextTheme.init(context, them);
          them.getThemeMode();
          TSizes.init(context: context);
          ScreenUtil.init(context);

          print(them.themeMode.name);
          return ScreenUtilInit(
              designSize: Size(
                TSizes.uiSW,
                TSizes.uiSH,
              ),
              minTextAdapt: true,
              splitScreenMode: true,
              useInheritedMediaQuery: true,
              ensureScreenSize: true,
              child: MaterialApp(
                  builder: (context, w) {

                    return w!;
                  },
                  supportedLocales: context.supportedLocales,
                  localizationsDelegates: context.localizationDelegates,
                  navigatorKey: Get.navigatorKey,
                  title: TTexts.appName,
                  themeMode: them.themeMode,
                  theme: them.isDarkModeEnabled
                      ? TAppTheme.darkTheme
                      : TAppTheme.lightTheme,
                  darkTheme: TAppTheme.darkTheme,
                  debugShowCheckedModeBanner: false,
                  home: const IntroScreen()));
        }));
  }
}
//sbp_0777c39fd3cec540cb5094f21bd1703e4d49012e
