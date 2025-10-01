import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/splacescreen_controller.dart';

class SplacescreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SplacescreenController>(()=>SplacescreenController());
  }
}