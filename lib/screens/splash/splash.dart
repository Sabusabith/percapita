import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/controller/splashcontroller.dart';

class SplashScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Colors.white,body: GetBuilder<SplashController>(init: SplashController(),builder: (controller) => 
      Container(width: size.width,height: size.height,
        color: Colors.green,
        
      ),
    ),);
  }
}