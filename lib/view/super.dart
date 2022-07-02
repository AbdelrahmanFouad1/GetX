import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';
import 'package:get_x/utils/services/setting_services.dart';


class SuperPage extends StatelessWidget {
   const SuperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
                onPressed: (){
                  SettingServices.prefs!.clear();
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
