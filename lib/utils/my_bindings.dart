import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';

class MyBinding implements Bindings{
  @override
  void dependencies() {
    Get.put( HomeController(), permanent: true);
  }
}