import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/utils/services/setting_services.dart';
import 'package:get_x/view/home.dart';



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
      theme: Themes.customLightTheme,
      getPages: [
        GetPage(name: '/', page: () =>  const HomePage()),
      ],
    );
  }
}

class Themes {
  static ThemeData customDarkTheme = ThemeData(
    primarySwatch: Colors.red,
    appBarTheme: const AppBarTheme(color: Colors.red,),
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static ThemeData customLightTheme = ThemeData(
    primarySwatch: Colors.green,
    appBarTheme: const AppBarTheme(color: Colors.green,),
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}