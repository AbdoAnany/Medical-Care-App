import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:medical_care_app/the.dart';

import 'app.dart';
import 'di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initAppModule();

  runApp(
    EasyLocalization(
      supportedLocales: [const Locale('en', 'US'), const Locale('ar', 'EG')],
      path: 'assets/tr', // <-- change the path of the translation files
      fallbackLocale: const Locale('ar', 'EG'),
      child: App(),
    ),
  );
}



// void main() {
//   runApp(MyApp());
// }
//




