import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_x/utils/middleware/auth_middleware.dart';
import 'package:get_x/view/home.dart';
import 'package:get_x/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/', page: () =>  const LoginPage(), middlewares: [AuthMiddleware()]),
        GetPage(name: '/home', page: () =>  const HomePage()),
      ],
    );
  }
}
