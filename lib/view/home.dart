import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/home_controller.dart';
import 'package:get_x/utils/my_bindings.dart';
import 'package:get_x/view/page_one.dart';
import 'package:get_x/view/page_two.dart';

class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

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
                  Get.to(()=> PageOne(), binding: MyBinding());
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
