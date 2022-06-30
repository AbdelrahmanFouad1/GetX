import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_contriller.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

 final controller =  Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx( () => Row(
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
                      '${controller.counter.value}',
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
                ),
            ),
          ],
        ),
      ),
    );
  }
}

// getBuilder update to rebuild
// getX Stream
// obx Stream user multi Controller in one page by injecting
