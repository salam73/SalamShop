import 'package:get/get.dart';
import 'package:salamshop/logic/bindings/auth_biniding.dart';
import 'package:salamshop/logic/bindings/main_binding.dart';
import 'package:salamshop/salam/salam_main.dart';
import 'package:salamshop/view/screens/auth/forget_password_screen.dart';
import 'package:salamshop/view/screens/auth/signup_screen.dart';

import '../logic/bindings/product_binding.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/main_screen.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes {
  //initialRoute

  static const welcome = Routes.welcomeScreen;
  static const mainScreen = Routes.mainScreen;
  static const salamMain = Routes.salamMain;
  //getPages

  static final routes = [
    GetPage(
      name: Routes.salamMain,
      page: () =>  SalamMain(),
      binding: AuthBinding(),
    ), GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
      bindings: [
        AuthBinding(),
        MainBinding(),
        ProductBinding()
      ],
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
  static const paymentScreen = '/paymentScreen';
  static const salamMain = '/salamMain';
}
