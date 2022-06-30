import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';

class PageOne extends StatelessWidget {
  PageOne({Key? key}) : super(key: key);

  final controller =  Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) {
                debugPrint("Rebuild");
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.increment();
                      },
                      icon: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      '${controller.counter}',
                      style:  const TextStyle(fontSize: 26.0),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () {
                        controller.decrement();
                      },
                      icon: const Icon(Icons.remove),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}