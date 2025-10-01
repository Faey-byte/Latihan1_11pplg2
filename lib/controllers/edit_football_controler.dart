import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'football_page_controler.dart';

class EditFootballController extends GetxController {
  final namaController = TextEditingController();
  final posisiController = TextEditingController();
  final nomorController = TextEditingController();

  final FootballPageController footballController = Get.find();

  void loadPlayer(int index) {
    final player = footballController.players[index];
    namaController.text = player.nama;
    posisiController.text = player.posisi;
    nomorController.text = player.nomor.toString();
  }

  void savePlayer(int index) {
    footballController.players[index].nama = namaController.text;
    footballController.players[index].posisi = posisiController.text;
    footballController.players[index].nomor = int.tryParse(nomorController.text) ?? 0;
    footballController.players.refresh(); // update list
  }
}
