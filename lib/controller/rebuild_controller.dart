/// page four
// import 'package:get/get.dart';
//
// class RebuildController extends GetxController{
//   int counter1 = 0;
//   int counter2 = 0;
//
//   void incrementCount1() {
//     counter1 ++;
//     update();
//   }
//
//   void decrementCount1() {
//     counter1 --;
//     update();
//   }
//
//   void incrementCount2() {
//     counter2 ++;
//     update();
//   }
//
//   void decrementCount2() {
//     counter2 --;
//     update();
//   }
//
//   int get sumCount => counter1 + counter2;
//
// }

/// page three
import 'package:get/get.dart';

class RebuildController extends GetxController{
  RxInt counter1 = 0.obs;
  RxInt counter2 = 0.obs;

  void incrementCount1() {
    counter1 ++;
  }

  void decrementCount1() {
    counter1 --;
  }

  void incrementCount2() {
    counter2 ++;
  }

  void decrementCount2() {
    counter2 --;
  }

  int get sumCount => counter1.value + counter2.value;

}


