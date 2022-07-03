import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';


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
                Get.toNamed('home', arguments: {
                  'name': 'Abdo',
                  'age': '21',
                });
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Home'),
            ),
          ),
        ],
      ),
    );
  }
}
