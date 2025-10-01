import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/edit_football_controler.dart';

class EditPlayerPage extends StatelessWidget {
  final int index;
  EditPlayerPage({super.key, required this.index});

  final EditFootballController controller = Get.put(EditFootballController());

  @override
  Widget build(BuildContext context) {
    controller.loadPlayer(index);

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller.namaController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: controller.posisiController,
              decoration: const InputDecoration(labelText: "Posisi"),
            ),
            TextField(
              controller: controller.nomorController,
              decoration: const InputDecoration(labelText: "Nomor Punggung"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.savePlayer(index);
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
