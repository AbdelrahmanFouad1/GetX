import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/main.dart';

class AuthMiddleware extends GetMiddleware{

  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(String? route) {
    if(prefs!.getString('role') == 'user') return const RouteSettings(name: '/home');
    if(prefs!.getString('role') == 'admin') return const RouteSettings(name: '/admin');
    return null;

  }
}