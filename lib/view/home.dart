import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('1'.tr),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
                onPressed: (){
                },
              color: Colors.red,
              textColor: Colors.white,
              child:  Text('2'.tr),
            ),
          ),
          Center(
            child: MaterialButton(
                onPressed: (){
                },
              color: Colors.red,
              textColor: Colors.white,
              child:  Text('3'.tr),
            ),
          ),
        ],
      ),
    );
  }
}
