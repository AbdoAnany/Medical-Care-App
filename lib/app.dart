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

        final themeMode =  them.getThemeMode();
        final isDark =  them.getThemeModeIsDark();
       //   AppTextTheme.init(context, them);
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
                  builder: (context, w) => w!,
                  debugShowCheckedModeBanner: false,
                  supportedLocales: context.supportedLocales,
                  localizationsDelegates: context.localizationDelegates,
                  navigatorKey: Get.navigatorKey,
                  title: TTexts.appName,
                  theme: isDark ? AppTheme.darkTheme : AppTheme.lightTheme,

                  home: const IntroScreen()));
        }));
  }
}
//sbp_0777c39fd3cec540cb5094f21bd1703e4d49012e
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         fontFamily: 'Tajawal',
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
//         useMaterial3: true,
//       ),
//       locale: context.locale,
//       supportedLocales: context.supportedLocales,
//       localizationsDelegates: context.localizationDelegates,
//       debugShowCheckedModeBanner: false,
//       home: const App(),
//     );
//   }
// }
