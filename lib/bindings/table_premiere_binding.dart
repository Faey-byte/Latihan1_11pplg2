import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/table_premiere_controller.dart';

class TablePremiereBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(TablePremiereController());
  }
}