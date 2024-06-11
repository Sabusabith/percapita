import 'package:get/get.dart';

class HoverController extends GetxController {
  var hoveredIndex = (-1).obs;
  var clickedIndex = (0).obs;

  void onHover(int index) {
    hoveredIndex.value = index;
  }

  void onClick(int index) {
    clickedIndex.value = index;
  }

  void onExit() {
    hoveredIndex.value = -1;
  }
}
