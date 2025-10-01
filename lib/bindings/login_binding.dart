import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/login_controller.dart';
import 'package:latihan1_11pplg2/controllers/splacescreen_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(()=>LoginController());
  }
}