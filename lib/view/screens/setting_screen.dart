import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salamshop/logic/controllers/auth_controller.dart';
import 'package:salamshop/logic/controllers/theme_controller.dart';

import '../../utils/theme.dart';

class SettingScreen extends StatelessWidget {
   SettingScreen({Key? key}) : super(key: key);

  var controller =Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
               ThemeController().changesTheme();
              },
              child: Text(
                'Setting   Screen ',
                style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
              ),
            ), TextButton(
              onPressed: () {

                Get.defaultDialog(
                  title: "Logout From App",
                  titleStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  middleText: 'Are you sure you need to logout',
                  middleTextStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: Colors.grey,
                  radius: 10,
                  textCancel: " No ",
                  cancelTextColor: Colors.white,
                  textConfirm: " YES ",
                  confirmTextColor: Colors.white,
                  onCancel: () {
                    Get.back();
                  },
                  onConfirm: () {
                    controller.signOutFromApp();
                  },
                  buttonColor: Get.isDarkMode ? pinkClr : mainColor,
                );

              },
              child: Text(
                'log out ',
                style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }/**/
}
