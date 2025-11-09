import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_page_controler.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';


class FootballPlayerWide extends StatelessWidget {
  FootballPlayerWide({super.key});

  final FootballPageController controller = Get.put(FootballPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Football Player")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() => GridView.builder(
              itemCount: controller.players.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // jumlah kolom (bisa ubah sesuai kebutuhan)
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2, // proporsi lebar : tinggi
              ),
              itemBuilder: (context, index) {
                final player = controller.players[index];
                return GestureDetector(
                  onTap: () {
                    Get.to(() => EditPlayerPage(index: index));
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(player.image, width: 70, height: 70),
                        const SizedBox(height: 8),
                        Text(
                          player.nama,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text("${player.posisi} - No. ${player.nomor}",
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }
}
