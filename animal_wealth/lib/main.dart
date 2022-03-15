import 'package:animal_wealth/view/intro/intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:overlay_support/overlay_support.dart';

import 'core/db/auth_shared_preferences.dart';
import 'utils/translations/app_translations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await TokenPref.init();
  await ExpireDatePref.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return OverlaySupport.global(
      child: GetMaterialApp(
        title: 'Animal Wealth',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'hanimation',
          primarySwatch: Colors.blue,
        ),
        home: const IntroPage(),
        translations: Translation(),
        locale: const Locale('ar'),
        fallbackLocale: const Locale('ar'),
      ),
    );
  }
}
