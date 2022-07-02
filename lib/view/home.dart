import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';


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
                  prefs!.clear();
                  Get.offAllNamed('/');
                },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }
}
