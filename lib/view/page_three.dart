import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x/view/page_one.dart';
import 'package:get_x/view/page_two.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: MaterialButton(
              onPressed: (){
                Get.offAll(const PageOne());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Page One ( Off All )'),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: (){
                Get.off(const PageTwo());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Page Two ( Off )'),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: (){
                Get.back();
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}
