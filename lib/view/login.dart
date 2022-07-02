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
              onPressed: () {
                Get.snackbar(
                  'title',
                  'How are you!',
                  colorText: Colors.white,
                  duration: const Duration(seconds: 2),
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.blue,
                  borderColor: Colors.black,
                  borderWidth: 2,
                  maxWidth: 300,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.lightBlueAccent,
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(0, 10),
                    )
                  ],
                );
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Show Snackbar'),
            ),
          ),
        ],
      ),
    );
  }
}
