import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final GetStorage boxStorage = GetStorage();
  final key = 'isDarkModes';

  var myThem='';



  saveThemeDataInBox(bool isDark) {
    boxStorage.write(key, isDark);
  }

  bool getThemeDataFromBox() {
    if(boxStorage.read<bool>(key)==false)//if boxStorage return false which is light mode
      {
        myThem='light';
      }
    else {
      myThem='dart';
    }

    update();
    return boxStorage.read<bool>(key) ?? false;

  }

  ThemeMode get themeDataGet =>
      getThemeDataFromBox() ? ThemeMode.dark : ThemeMode.light;

  void changesTheme() {
    Get.changeThemeMode(
        getThemeDataFromBox() ? ThemeMode.light : ThemeMode.dark);
    saveThemeDataInBox(!getThemeDataFromBox());
  }
}