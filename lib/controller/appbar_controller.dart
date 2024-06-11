import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarController extends GetxController{
RxBool islight = true.obs;
void isDarkmode() {
  islight.value = !islight.value;
   Get.changeTheme(
      islight.value ? ThemeData.dark() : ThemeData.light(),
    );
}


}