import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/rebuild_controller.dart';
import 'package:get_x/view/page_three.dart';
import 'package:get_x/view/page_two.dart';

class PageFour extends StatelessWidget {
   PageFour({Key? key}) : super(key: key);

   final exController = Get.put(RebuildController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Four'),
      ),
      body: Column(
        children: [
          GetBuilder<RebuildController>(
            init: RebuildController(),
            builder: (controller) {
              debugPrint("Rebuild Counter 1");
              return Text(
                '${controller.counter1}',
                style: Theme.of(context).textTheme.titleLarge,
              );
            },
          ),
          GetBuilder<RebuildController>(
            init: RebuildController(),
            builder: (controller) {
              debugPrint("Rebuild Counter 2");
              return Text(
                '${controller.counter2}',
                style: Theme.of(context).textTheme.titleLarge,
              );
            },
          ),
          GetBuilder<RebuildController>(
            init: RebuildController(),
            builder: (controller) {
              debugPrint("Rebuild Sum");
              return Text(
                '${controller.sumCount}',
                style: Theme.of(context).textTheme.titleLarge,
              );
            },
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                exController.incrementCount1();
              },
              textColor: Colors.black,
              child: const Text('Add One'),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                exController.incrementCount2();
              },
              textColor: Colors.black,
              child: const Text('Add Two'),
            ),
          ),
        ],
      ),
    );
  }
}
