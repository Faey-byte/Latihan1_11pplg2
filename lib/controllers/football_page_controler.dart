import 'package:get/get.dart';
import '../models/player.dart';

class FootballPageController extends GetxController {
  var players = <Player>[
    Player(nama: "Messi", posisi: "Forward", nomor: 10, image: "assete/messi.png"),
    Player(nama: "Fernandes", posisi: "Midfielder", nomor: 8, image: "assete/fernandes.png"),
    Player(nama: "Ronaldinho", posisi: "Forward", nomor: 10, image: "assete/ronaldinho.png"),
    Player(nama: "Ronaldo", posisi: "Forward", nomor: 7, image: "assete/ronaldo.png"),
    Player(nama: "Cunha", posisi: "Striker", nomor: 9, image: "assete/cunha.png"),
  ].obs;

  void updatePlayer(int index, String nama, String posisi, int nomor) {
    players[index].nama = nama;
    players[index].posisi = posisi;
    players[index].nomor = nomor;
    players.refresh();
  }
}
