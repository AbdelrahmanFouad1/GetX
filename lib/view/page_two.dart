import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';

class PageTwo extends StatelessWidget {
   PageTwo({Key? key}) : super(key: key);
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) {
                return Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headlineLarge,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
