import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rosaapp/screens/HomeScreen.dart';
import 'package:rosaapp/screens/OnBoard.dart';
import 'package:rosaapp/screens/bmi.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'AppTranslation.dart';
import 'constants.dart';



Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,

  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
   int isviewed = prefs.getInt('onBoard');
  runApp(GetMaterialApp(

    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: kBackgroundColor,
      primaryColor: kPrimaryColor,
      unselectedWidgetColor: Colors.white,


      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    translationsKeys: AppTranslation.translationsKeys,
      locale: Get.deviceLocale,

    fallbackLocale: const Locale('en','US'),
    home:  HomeScreen(),



  ));
}

