import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:salamshop/routes/routes.dart';
import 'package:salamshop/utils/theme.dart';
import 'firebase_options.dart';
import 'logic/controllers/theme_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,

      themeMode: ThemeController().themeDataGet,
      initialRoute: //Routes.salamMain,
      FirebaseAuth.instance.currentUser!=null? AppRoutes.mainScreen:AppRoutes.welcome,
      getPages: AppRoutes.routes,
    );
  }
}
