import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/main.dart';
import 'package:get_x/utils/services/setting_services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              onPressed: (){
                Get.defaultDialog(
                  title: 'Success',
                  middleText: 'You are logged in',
                  textCancel: 'Cancel',
                  textConfirm: 'Ok',
                  onCancel: (){},
                  onConfirm: (){
                  },

                );
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Show Dialog'),
            ),
          ),
        ],
      ),
    );
  }
}