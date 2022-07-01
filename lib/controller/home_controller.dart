import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }

  @override
  void onInit() {
    debugPrint('HomeController onInit');
    super.onInit();
  }

  @override
  void onReady() {
    debugPrint('HomeController onReady');
    super.onReady();
  }

  @override
  void onClose() {
    debugPrint('HomeController onClose');
    super.onClose();
  }
}