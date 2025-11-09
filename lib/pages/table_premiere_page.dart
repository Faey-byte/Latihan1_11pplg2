import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/table_premiere_controller.dart';

class TablePremierePage extends StatelessWidget {
  TablePremierePage({super.key});

  final controller = Get.find<TablePremiereController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Table Premiere"),),
      body: Obx((){
          if (controller.isLoading.value) {
            return Center(child: CircularProgressIndicator(),);
          }

          return ListView.builder(
            itemCount: controller.tableStanding.length,
            itemBuilder: (context, index) {
            final team = controller.tableStanding[index];
            return Card(
              child: ListTile(
                title: Text(team.strTeam),
                leading: CircleAvatar(backgroundImage: NetworkImage(team.strBadge), radius: 25,),
                subtitle: Text("D :"+team.intDraw + " W :" + team.intWin + " L :" + team.intLoss),
                trailing: Text(team.intPoints ),
              ),
            );
          },);
        
       }, ),
    );
  }
}