import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/view/page_three.dart';
import 'package:get_x/view/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
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
                Get.to(const PageThree());
              },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Page Three'),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: (){
                // this is equal to mayPop in material app
                Get.back();
                // Navigator.of(context).pop();
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
