import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_x/view/home.dart';
import 'package:get_x/view/page_one.dart';
import 'package:get_x/view/page_three.dart';
import 'package:get_x/view/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/pageOne', page: () => const PageOne()),
        GetPage(name: '/pageTwo', page: () => const PageTwo()),
        GetPage(name: '/pageThree', page: () => const PageThree()),
      ],
    );
  }
}