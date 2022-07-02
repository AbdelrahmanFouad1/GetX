import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_x/utils/middleware/auth_middleware.dart';
import 'package:get_x/utils/services/setting_services.dart';
import 'package:get_x/view/admin.dart';
import 'package:get_x/view/home.dart';
import 'package:get_x/view/login.dart';
import 'package:get_x/view/super.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

Future initServices() async {
  await Get.putAsync(() => SettingServices().init());
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
        GetPage(name: '/admin', page: () =>  const AdminPage()),
        GetPage(name: '/super', page: () =>  const SuperPage()),
      ],
    );
  }
}
