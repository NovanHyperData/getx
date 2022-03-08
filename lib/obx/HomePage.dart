import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/obx/Other.dart';
import 'package:getx/obx/controllers/counterController.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Instansiasi kelas anda menggunakan Get.put() untuk membuatnya tersedia untuk seluruh "child" route dibawahnya.    
    final counterController c = Get.put(counterController());

    return Scaffold(
      // Gunakan Obx(() => ...) untuk mengupdate Text() ketika `count` berubah.
      appBar: AppBar(title: Obx(() => Text("Clicks: ${c.count}"))),

      // Ganti 8 baris Navigator.push menggunan Get.to() agar lebih sederhana. Anda tidak perlu `context`.
      body: Center(child: ElevatedButton(
              child: Text("Go to Other"), onPressed: () => Get.to(Other()))),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: c.increment));
  }
}