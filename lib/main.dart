import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/controller/appbar_controller.dart';
import 'package:percapita_copy/screens/Login/login.dart';
import 'package:percapita_copy/screens/home/MasterScreen.dart';
import 'package:percapita_copy/screens/home/dashboard/dashboard.dart';

import 'screens/splash/splash.dart';

void main(List<String> args) {
  Get.put(AppbarController()); // Ensure the controller is put into the dependency injection system
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppbarController appbarController = Get.find<AppbarController>();

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        home: Myapps(),    
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: appbarController.islight.value ? ThemeMode.dark : ThemeMode.light,
      
    );
  }
  
}
class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
