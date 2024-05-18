import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:section_project/core/themes.dart';
import 'package:section_project/features/login/view/page/login_page.dart';
import 'package:section_project/features/onboarding/view/page/onboarding_page.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:section_project/core/routes.dart';

void main() async{
 /* WidgetsFlutterBinding.ensureInitialized();
 SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
 bool onBoarding = sharedPreferences.getBool('onboarding')??false;
  // ignore: non_constant_identifier_names*/
  MaterialApp MyApp = MaterialApp(
    themeMode: ThemeMode.light,
    theme: Themes.singelob.light,
    darkTheme: Themes.singelob.dark,
     builder: DevicePreview.appBuilder,
    debugShowCheckedModeBanner: false,
    onGenerateRoute:Routes.onGenerateRoute ,
    onGenerateInitialRoutes:(_){return
      Routes.initroute;
    },
  );
// home: onBoarding? const login_page():const Onboarding_page(),
   runApp( DevicePreview(
      enabled: true,
      builder: (context) => MyApp, // Wrap your app
    ),);
  
}


 
  
