import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';
import 'package:get_x/view/page_one.dart';
import 'package:get_x/view/page_two.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final controller = Get.lazyPut(()=> HomeController(), fenix: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
                onPressed: (){
                  Get.to(()=> PageOne());
                },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Page One'),
            ),
          ),
          Center(
            child: MaterialButton(
                onPressed: (){
                  Get.to(() =>  PageTwo());
                },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Page Two'),
            ),
          ),
        ],
      ),
    );
  }
}
