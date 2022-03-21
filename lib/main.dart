import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rosaapp/screens/HomeScreen.dart';
import 'package:rosaapp/screens/OnBoard.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'AppTranslation.dart';
import 'constants.dart';



Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,

  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
   int? isviewed = prefs.getInt('onBoard');
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.indigo,
      scaffoldBackgroundColor: kBackgroundColor,
      primaryColor: kPrimaryColor,

      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    translationsKeys: AppTranslation.translationsKeys,
      locale: Get.deviceLocale,

    fallbackLocale: const Locale('en','US'),
    // home: isviewed != 0 ? OnBoard() : HomeScreen(),
    home: OnBoard()


  ));
}

