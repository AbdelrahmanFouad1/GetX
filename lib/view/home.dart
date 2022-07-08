import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';


class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Text('How are you?'),
          Center(
            child: MaterialButton(
                onPressed: (){
                  if(Get.isDarkMode){
                    // Get.changeTheme(ThemeData.light());
                    Get.changeTheme(Themes.customLightTheme);
                  }else{
                    // Get.changeTheme(ThemeData.dark());
                    Get.changeTheme(Themes.customDarkTheme);
                  }
                },
              color: Colors.red,
              textColor: Colors.white,
              child:  const Text('Change Theme'),
            ),
          ),
        ],
      ),
    );
  }
}
