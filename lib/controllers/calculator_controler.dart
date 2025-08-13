import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CalculatorControler extends GetxController {
  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();
  var txthasil = "".obs;

  bool _cekInput() {
    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
      txthasil.value = "Input kosong!";
      return false;
    }
    return true;
  }

  void tambah() {
    if (!_cekInput()) return;
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);
    txthasil.value = (angka1 + angka2).toString();
  }

  void kurang() {
    if (!_cekInput()) return;
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);
    txthasil.value = (angka1 - angka2).toString();
  }

  void kali() {
    if (!_cekInput()) return;
    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);
    txthasil.value = (angka1 * angka2).toString();
  }

  void bagi() {
    if (!_cekInput()) return;
    double angka1 = double.parse(txtangka1.text);
    double angka2 = double.parse(txtangka2.text);
    if (angka2 == 0) {
      txthasil.value = "Tidak bisa dibagi 0";
    } else {
      txthasil.value = (angka1 / angka2).toString();
    }
  }

  void clear() {
    txtangka1.clear();
    txtangka2.clear();
    txthasil.value = '';
    FocusScopeNode currentFocus = FocusScope.of(Get.context!);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
