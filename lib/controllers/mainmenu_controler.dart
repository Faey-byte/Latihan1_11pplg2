import 'package:get/get.dart';

class MainmenuControler extends GetxController{

var selectedIndex = 0.obs;

void changePage(int index){
  selectedIndex.value = index;
}

}