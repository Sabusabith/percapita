import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/common/colors/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import '../controller/appbar_controller.dart';
import 'responsive.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {super.key,
      required this.hint,
      required this.label,
      required this.controller});
  AppbarController appbarController = Get.put(AppbarController());

  var hint;
  var label;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
           var mobile = Responsive.isMobile(context);
    var tab = Responsive.isTablet(context);
    return Obx(
      () =>mobile? Padding(padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          style: TextStyle(
              color: appbarController.islight.value
                  ? Colors.grey.shade800
                  : Colors.white),
          cursorColor: primeryColor,
          controller: controller,
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle: TextStyle(
                  color: appbarController.islight.value
                      ? Colors.grey.shade700:Colors.grey.shade500
                      ,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              labelText: label,
              hintStyle: TextStyle(
                  color: appbarController.islight.value
                      ? Colors.grey.shade500:Colors.grey.shade500
                    ),
              hintText: hint,
              labelStyle: TextStyle(
                  color: appbarController.islight.value
                      ? Colors.grey.shade700:Colors.grey.shade500
                      ,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: appbarController.islight.value? Colors.grey.shade700:Colors.white, width: 1.5),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: appbarController.islight.value? Colors.grey.shade500:Colors.grey.shade500, width: 1.5))),
        ),
      ):TextField(
          style: TextStyle(
              color: appbarController.islight.value
                  ? Colors.grey.shade800
                  : Colors.white),
          cursorColor: primeryColor,
          controller: controller,
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelStyle: TextStyle(
                  color: appbarController.islight.value
                      ? Colors.grey.shade700:Colors.grey.shade500
                      ,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              labelText: label,
              hintStyle: TextStyle(
                  color: appbarController.islight.value
                      ? Colors.grey.shade500:Colors.grey.shade500
                    ),
              hintText: hint,
              labelStyle: TextStyle(
                  color: appbarController.islight.value
                      ? Colors.grey.shade700:Colors.grey.shade500
                      ,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: appbarController.islight.value? Colors.grey.shade700:Colors.white, width: 1.5),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: appbarController.islight.value? Colors.grey.shade500:Colors.grey.shade500, width: 1.5))),
        ),
    );
  }
}
