import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/main.dart';

class AuthMiddleware extends GetMiddleware{

  @override
  RouteSettings? redirect(String? route) {
    if(prefs!.getString('id') != null) return const RouteSettings(name: '/home');
    return null;

  }
}