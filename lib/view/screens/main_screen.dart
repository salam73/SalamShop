import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salamshop/logic/controllers/main_controller.dart';
import 'package:salamshop/routes/routes.dart';
import 'package:salamshop/utils/theme.dart';

import '../../logic/controllers/auth_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    // FirebaseAuth auth = FirebaseAuth.instance;
    // print(auth.currentUser!.displayName);
    //var d = auth.currentUser!.displayName;
    return SafeArea(
      child: GetX<MainController>(
          // init: SalamMainController(),

          builder: (logic) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: mainColor,
            title: Text(logic.title[logic.currentIndex.value]),
            centerTitle: true,
            leading: Container(),
            actions: [
              IconButton(
                onPressed: () {
                  Get.isDarkMode?Get.changeThemeMode(ThemeMode.light):Get.changeThemeMode(ThemeMode.dark)
                  ;
                },
                icon: const Icon(Icons.shopping_basket),
              ),
            ],
          ),
          body: IndexedStack(
            index: logic.currentIndex.value,
            children: logic.tabs.value,
          ),

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
                icon: Icon(
                  Icons.home,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.category,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
                icon: Icon(
                  Icons.category,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.favorite,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
                icon: Icon(
                  Icons.favorite,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.settings,
                  color: Get.isDarkMode ? pinkClr : mainColor,
                ),
                icon: Icon(
                  Icons.settings,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                label: '',
              ),
            ],
            onTap: (index) {
              controller.currentIndex.value = index;
            },
          ),

        );
      }),
    );
  }
}
