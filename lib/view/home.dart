import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/utils/services/setting_services.dart';


class HomePage extends GetView<SettingServices> {
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
          GetX<SettingServices>(
            builder: (c) {
             return Center(
                child: Text(
                  '${c.counter.value}',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              );
            },
          ),
          Center(
            child: MaterialButton(
                onPressed: (){
                  // SettingServices.prefs!.clear();
                  // Get.offAllNamed('/');
                  controller.increase();
                },
              color: Colors.red,
              textColor: Colors.white,
              child: const Text('Increase Counter'),
            ),
          ),
        ],
      ),
    );
  }
}
