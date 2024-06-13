import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/common/colors/colors.dart';
import 'package:percapita_copy/controller/splashcontroller.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class SplashScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Colors.white,body: GetBuilder<SplashController>(init: SplashController(),builder: (controller) => 
      Container(width: size.width,height: size.height,
       child: Center(child: LoadingAnimationWidget.beat(
        color: primeryColor.withOpacity(.7),
        size: 100,
      )),
        
      ),
    ),);
  }
}