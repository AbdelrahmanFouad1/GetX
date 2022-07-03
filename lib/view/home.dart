import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/page_two_controller.dart';


class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageTwoController controller = Get.put(PageTwoController());
    return Scaffold(
      appBar: AppBar(
        title:  Text('1'.tr),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(controller.name!),
          Text(controller.age!),
          Center(
            child: MaterialButton(
                onPressed: (){
                  Get.offAllNamed('/');
                },
              color: Colors.red,
              textColor: Colors.white,
              child:  const Text('Home page'),
            ),
          ),
        ],
      ),
    );
  }
}
