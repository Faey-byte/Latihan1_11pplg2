 import 'package:get/get.dart'; 
import 'package:latihan1_11pplg2/controllers/calculator_controler.dart';

 class CalculatorBinding extends Bindings{
   @override
   void dependencies() {
     // TODO: implement dependencies
      Get.lazyPut<CalculatorControler>(()=>CalculatorControler());
   }
  

 }