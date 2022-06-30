import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/view/page_one.dart';
import 'package:get_x/view/page_three.dart';
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
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PageOne()));
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const PageOne()));
                  // Navigator.pushAndRemoveUntil(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const PageOne(),
                  //     ),
                  //         (Route<dynamic> route) => false);

                  /// GetX

                  Get.toNamed('/pageOne');
                  // Get.off(const PageOne());
                },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Page One'),
            ),
          ),
          Center(
            child: MaterialButton(
                onPressed: (){
                  Get.to('/pageTwo');
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
