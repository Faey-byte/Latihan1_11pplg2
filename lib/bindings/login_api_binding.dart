import 'package:get/get.dart';
import '../controllers/login_api_controller.dart';

class LoginAPIBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginAPIController());
  }
}