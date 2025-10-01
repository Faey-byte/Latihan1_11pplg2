import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/contact_controller.dart';

class ContactBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ContactController>(()=>ContactController());
  }
}