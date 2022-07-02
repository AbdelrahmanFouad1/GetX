import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_x/utils/services/setting_services.dart';

class MyLocalController extends GetxController{

  Locale initialLang = SettingServices.prefs!.getString('lang') == null ? Get.deviceLocale! : Locale(SettingServices.prefs!.getString('lang')!);
  
  void changeLanguage(String code) {
    Locale locale = Locale(code);
    SettingServices.prefs!.setString('lang', code);
    Get.updateLocale(locale);
  }
}