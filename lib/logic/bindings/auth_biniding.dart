import 'package:get/get.dart';

import '../../salam/controllers/salam_main_controller.dart';
import '../controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(SalamMainController());
  }
}
