import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_page_controler.dart';

class EditPlayerPage extends StatelessWidget {
  final int index;
  EditPlayerPage({super.key, required this.index});

  final FootballPageController controller = Get.find();

  final TextEditingController namaController = TextEditingController();
  final TextEditingController posisiController = TextEditingController();
  final TextEditingController nomorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final player = controller.players[index];

    namaController.text = player.nama;
    posisiController.text = player.posisi;
    nomorController.text = player.nomor.toString();

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: posisiController,
              decoration: const InputDecoration(labelText: "Posisi"),
            ),
            TextField(
              controller: nomorController,
              decoration: const InputDecoration(labelText: "Nomor Punggung"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.updatePlayer(
                  index,
                  namaController.text,
                  posisiController.text,
                  int.tryParse(nomorController.text) ?? 0,
                );
                Get.back();
              },
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
