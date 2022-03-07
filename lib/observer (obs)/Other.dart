import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/observer%20(obs)/controllers/counterController.dart';

class Other extends StatelessWidget {
 // Anda bisa meminta Get untuk menemukan kontroler yang digunakan di halaman lain dan redirect ke halaman itu.
  
  // bentuk A
  // final counterController c = Get.find<counterController>();

  // bentuk B
  final counterController c = Get.find();

  @override
  Widget build(BuildContext context) {
    // Akses variabel `count` yang telah di update.
     return Scaffold(body: Center(child: Text("${c.count}", style: TextStyle(fontSize: 50),)));
  }
}