import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/football_page_controler.dart';

import 'edit_player_page.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final FootballPageController controller = Get.put(FootballPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Football Player")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
              itemCount: controller.players.length,
              itemBuilder: (context, index) {
                final player = controller.players[index];
                return Card(
                  child: ListTile(
                    leading: Image.asset(player.image, width: 50),
                    title: Text(player.nama),
                    subtitle: Text("${player.posisi} - No. ${player.nomor}"),
                    onTap: () {
                      Get.to(() => EditPlayerPage(index: index));
                    },
                  ),
                );
              },
            )),
      ),
    );
  }
}
