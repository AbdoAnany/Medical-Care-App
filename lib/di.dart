
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/http/dio_client.dart';
import 'core/theme/widget_themes/text_theme.dart';


final sl = GetIt.instance;

Future<void> initAppModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TDioHelper.init();
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => prefs);
  sl.registerLazySingleton<TTextTheme>(() => TTextTheme());
}

