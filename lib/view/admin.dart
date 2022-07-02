import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';


class AdminPage extends StatelessWidget {
   const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
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
