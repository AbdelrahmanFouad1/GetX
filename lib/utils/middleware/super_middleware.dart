import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_x/main.dart';

class SuperMiddleware extends GetMiddleware{

  @override
  int? get priority => 1;

  bool myVar = true;
  @override
  RouteSettings? redirect(String? route) {
    if(myVar) return const RouteSettings(name: 'super');
    return null;

  }
}