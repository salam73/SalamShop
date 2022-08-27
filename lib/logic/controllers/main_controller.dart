import 'package:get/get.dart';
import 'package:salamshop/view/screens/setting_screen.dart';

import '../../view/screens/category_screen.dart';
import '../../view/screens/favorites_screen.dart';
import '../../view/screens/home_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingScreen(),
  ].obs;

  var title = [
    "Salam Shop",
    "Categories",
    'Favourites',
    'Setting',
  ].obs;
}

