import 'package:get/get.dart';
import 'package:flutter/widgets.dart';

class MasterScreenController extends GetxController {
  var body = Rx<Widget>(Container());

  void updateBody(Widget newBody) {
    body.value = newBody;
  }
}
