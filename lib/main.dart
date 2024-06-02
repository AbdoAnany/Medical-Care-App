import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'app.dart';
import 'di.dart';




import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/pages/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initAppModule();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('ar', 'EG')],
      path: 'assets/tr', // <-- change the path of the translation files
      fallbackLocale: Locale('ar', 'EG'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Tajawal',

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,

      ),
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      debugShowCheckedModeBanner: false,
      home:App(),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       locale:  context.locale,
//
//       theme: ThemeData(
//         fontFamily: 'Tajawal',
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
//         useMaterial3: true,
//
//       ),
//       home:  App(),
//     );
//   }
// }
// class IntoScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         children: [
//           Container(
//             width: 390,
//             height: 844,
//             clipBehavior: Clip.antiAlias,
//             decoration: ShapeDecoration(
//               color: Colors.white,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   left: 0,
//                   top: 0,
//                   child: Container(
//                     width: 390,
//                     height: 47,
//                     padding: const EdgeInsets.only(
//                       top: 15,
//                       left: 11,
//                       right: 19.34,
//                       bottom: 14,
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: 359.66,
//                           height: 18,
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 left: 0,
//                                 top: 0,
//                                 child: SizedBox(
//                                   width: 54,
//                                   child: Text(
//                                     '9:41',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                       color: Color(0xFF121212),
//                                       fontSize: 15,
//                                       fontFamily: 'SF Pro Text',
//                                       fontWeight: FontWeight.w600,
//                                       height: 0,
//                                       letterSpacing: -0.30,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 335.33,
//                                 top: 3.33,
//                                 child: Container(
//                                   width: 24.33,
//                                   height: 11.33,
//                                   child: Stack(
//                                     children: [
//                                       Positioned(
//                                         left: 0,
//                                         top: 0,
//                                         child: Opacity(
//                                           opacity: 0.35,
//                                           child: Container(
//                                             width: 22,
//                                             height: 11.33,
//                                             decoration: ShapeDecoration(
//                                               shape: RoundedRectangleBorder(
//                                                 side: BorderSide(width: 1, color: Color(0xFF121212)),
//                                                 borderRadius: BorderRadius.circular(2.67),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       Positioned(
//                                         left: 2,
//                                         top: 2,
//                                         child: Container(
//                                           width: 18,
//                                           height: 7.33,
//                                           decoration: ShapeDecoration(
//                                             color: Color(0xFF121212),
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(1.33),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 315,
//                                 top: 3.33,
//                                 child: Container(
//                                   width: 15.33,
//                                   height: 11,
//                                   decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                       image: NetworkImage("https://via.placeholder.com/15x11"),
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 293,
//                                 top: 3.67,
//                                 child: Container(
//                                   width: 17,
//                                   height: 10.67,
//                                   decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                       image: NetworkImage("https://via.placeholder.com/17x11"),
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 16,
//                   top: 747,
//                   child: Container(
//                     width: 358,
//                     height: 56,
//                     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
//                     decoration: ShapeDecoration(
//                       color: Color(0xFF0F7F7E),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           'التالي',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontFamily: 'Tajawal',
//                             fontWeight: FontWeight.w700,
//                             height: 0,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 201,
//                   top: 585,
//                   child: Text(
//                     'نعمل علي راحتك',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Color(0xFF121212),
//                       fontSize: 24,
//                       fontFamily: 'Tajawal',
//                       fontWeight: FontWeight.w700,
//                       height: 0,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 54,
//                   top: 630,
//                   child: SizedBox(
//                     width: 320,
//                     child: Opacity(
//                       opacity: 0.50,
//                       child: Text(
//                         'نسعي الي تحقيق راحتك الكاملة من خلال \nتوفير خصومات علي جميع الخدمات الطبية.',
//                         textAlign: TextAlign.right,
//                         style: TextStyle(
//                           color: Color(0xFF191933),
//                           fontSize: 18,
//                           fontFamily: 'Tajawal',
//                           fontWeight: FontWeight.w500,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 70,
//                   top: 194,
//                   child: Container(
//                     width: 261.04,
//                     height: 194.58,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 0,
//                           top: 0,
//                           child: Container(
//                             width: 261.04,
//                             height: 180.95,
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   left: 0,
//                                   top: 0,
//                                   child: Container(
//                                     width: 261.04,
//                                     height: 180.95,
//                                     child: Stack(children: [
//
//                                     ]),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 27.39,
//                                   top: 13.60,
//                                   child: Container(
//                                     width: 203.07,
//                                     height: 157.40,
//                                     child: Stack(
//                                       children: [
//                                         Positioned(
//                                           left: 120.59,
//                                           top: 0,
//                                           child: Container(
//                                             width: 82.47,
//                                             height: 157.40,
//                                             child: Stack(children: [
//
//                                             ]),
//                                           ),
//                                         ),
//                                         Positioned(
//                                           left: 9.36,
//                                           top: 16.75,
//                                           child: Container(
//                                             width: 54.85,
//                                             height: 44.22,
//                                             child: Stack(children: [
//
//                                             ]),
//                                           ),
//                                         ),
//                                         Positioned(
//                                           left: 0,
//                                           top: 85.19,
//                                           child: Container(
//                                             width: 108.53,
//                                             height: 72.21,
//                                             child: Stack(
//                                               children: [
//                                                 Positioned(
//                                                   left: 0,
//                                                   top: 9.42,
//                                                   child: Container(
//                                                     width: 108.53,
//                                                     height: 62.79,
//                                                     child: Stack(children: [
//
//                                                     ]),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 161.14,
//                           top: 118.82,
//                           child: Container(
//                             width: 33.48,
//                             height: 33.49,
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   left: 0,
//                                   top: 0,
//                                   child: Container(
//                                     width: 33.48,
//                                     height: 33.49,
//                                     child: Stack(children: [
//
//                                     ]),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 7.37,
//                                   top: 7.37,
//                                   child: Container(
//                                     width: 18.75,
//                                     height: 18.76,
//                                     child: Stack(children: [
//
//                                     ]),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 61.49,
//                           top: 5.89,
//                           child: Container(
//                             width: 29.37,
//                             height: 30.32,
//                             child: Stack(children: [
//
//                             ]),
//                           ),
//                         ),
//                         Positioned(
//                           left: 72.85,
//                           top: 11.66,
//                           child: Container(
//                             width: 99.40,
//                             height: 176.99,
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   left: 21.07,
//                                   top: 14.36,
//                                   child: Container(
//                                     width: 78.34,
//                                     height: 144.35,
//                                     child: Stack(children: [
//
//                                     ]),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 0,
//                                   top: 0,
//                                   child: Container(
//                                     width: 80.28,
//                                     height: 176.99,
//                                     child: Stack(
//                                       children: [
//                                         Positioned(
//                                           left: 35.61,
//                                           top: 10.30,
//                                           child: Container(
//                                             width: 14.37,
//                                             height: 2.06,
//                                             child: Stack(children: [
//
//                                             ]),
//                                           ),
//                                         ),
//                                         Positioned(
//                                           left: 4.17,
//                                           top: 30.88,
//                                           child: Container(
//                                             width: 31.57,
//                                             height: 24.41,
//                                             child: Stack(children: [
//
//                                             ]),
//                                           ),
//                                         ),
//                                         Positioned(
//                                           left: 28.10,
//                                           top: 25.42,
//                                           child: Container(
//                                             width: 35.91,
//                                             height: 75.90,
//                                             child: Stack(children: [
//
//                                             ]),
//                                           ),
//                                         ),
//                                         Positioned(
//                                           left: 20.33,
//                                           top: 41.86,
//                                           child: Container(
//                                             width: 24.44,
//                                             height: 27.47,
//                                             child: Stack(children: [
//
//                                             ]),
//                                           ),
//                                         ),
//                                         Positioned(
//                                           left: 43.39,
//                                           top: 27.72,
//                                           child: Container(
//                                             width: 22.11,
//                                             height: 32.86,
//                                             child: Stack(children: [
//
//                                             ]),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 141.01,
//                           top: 40.85,
//                           child: Container(
//                             width: 71.90,
//                             height: 52.04,
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   left: 19.15,
//                                   top: 0,
//                                   child: Container(
//                                     width: 52.75,
//                                     height: 25.55,
//                                     child: Stack(children: [
//
//                                     ]),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 0,
//                                   top: 27.78,
//                                   child: Container(
//                                     width: 52.86,
//                                     height: 24.26,
//                                     child: Stack(
//                                       children: [
//                                         Positioned(
//                                           left: 0,
//                                           top: 0,
//                                           child: Container(
//                                             width: 52.86,
//                                             height: 24.26,
//                                             child: Stack(children: [
//
//                                             ]),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 11,
//                   top: 67,
//                   child: Container(
//                     width: 361,
//                     height: 24,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 24,
//                           top: 0,
//                           child: Transform(
//                             transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
//                             child: Container(
//                               width: 24,
//                               height: 24,
//                               clipBehavior: Clip.antiAlias,
//                               decoration: BoxDecoration(),
//                               child: Stack(children: [
//
//                               ]),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 23,
//                           top: 3,
//                           child: Container(
//                             width: 338,
//                             height: 19,
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   left: 0,
//                                   top: 0,
//                                   child: Text(
//                                     'تخطي',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                       color: Color(0xFFA6A6A6),
//                                       fontSize: 16,
//                                       fontFamily: 'Tajawal',
//                                       fontWeight: FontWeight.w700,
//                                       height: 0,
//                                     ),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   left: 286,
//                                   top: 0,
//                                   child: Text(
//                                     'السابق',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                       color: Color(0xFFA6A6A6),
//                                       fontSize: 16,
//                                       fontFamily: 'Tajawal',
//                                       fontWeight: FontWeight.w700,
//                                       height: 0,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }