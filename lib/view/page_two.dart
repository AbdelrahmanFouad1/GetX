import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/view/page_three.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: MaterialButton(
              onPressed: (){
                Get.to(const PageTwo());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Page Two'),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: (){
                Get.off(const PageThree());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Page Three ( Off )'),
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
