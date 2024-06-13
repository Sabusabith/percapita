import 'package:get/get.dart';

import '../screens/Login/login.dart';

class SplashController extends GetxController{


@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _timerFn();
  }
  _timerFn(){
Future.delayed(Duration(seconds: 2)).then((value) => Get.to(LoginScreen()));
  }
}