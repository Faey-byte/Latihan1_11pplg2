import 'dart:convert';

import 'package:get/get.dart';
import 'package:latihan1_11pplg2/models/table_premiere_model.dart';
import 'package:http/http.dart' as http;

class TablePremiereController extends GetxController{
  var isLoading = false.obs;
  var tableStanding =<Table>[].obs;
  
  get standing => null;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchAPITablePremiere();
  }
  
  void fetchAPITablePremiere() async{
    const url = "https://www.thesportsdb.com/api/v1/json/3/lookuptable.php?l=4328&s=2025-2026";
    try {
      // code yang berpontensi crash
      isLoading.value = true;
      final response = await http.get(Uri.parse(url));
      print("status code "+response.statusCode.toString());
      print("json respon "+response.body.toString());
      if(response.statusCode == 200)  {
        //pasang json respon ke model
        final data = jsonDecode(response.body);
        final List standing = data['table'];
        tableStanding.assignAll(standing.map((e)=> Table.fromJson(e),).toList());
      }else{
        Get.snackbar("ERROR", "Message eror dari BE");
      }
    } catch (e)  {
      //tampilkan message error di snack bar notif, mengantisipasi adanya crash
     Get.snackbar("Error", e.toString());

    }
      isLoading.value = false; 

  }
}