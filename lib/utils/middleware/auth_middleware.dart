import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/main.dart';
import 'package:get_x/utils/services/setting_services.dart';

class AuthMiddleware extends GetMiddleware{

  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(String? route) {
    if(SettingServices.prefs!.getString('role') == 'user') return const RouteSettings(name: '/home');
    if(SettingServices.prefs!.getString('role') == 'admin') return const RouteSettings(name: '/admin');
    return null;

  }
}