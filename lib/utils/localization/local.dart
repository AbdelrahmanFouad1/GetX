import 'package:get/get_navigation/get_navigation.dart';

class MyLocal implements Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en' :{
      '1' : 'Home Page',
      '2' : 'Arabic',
      '3' : 'English',
    },
    'ar' :{
      '1' : 'الصفحة الرئيسية',
      '2' : 'عربي',
      '3' : 'انجليزي',
    },
  };

}