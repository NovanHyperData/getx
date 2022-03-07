import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/MyGame/Controller.dart';

class View extends StatelessWidget {
  const View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int target = Random().nextInt(999);
    // Instansiasi kelas anda menggunakan Get.put() untuk membuatnya tersedia untuk seluruh "child" route dibawahnya.    
    final Controller cont = Get.put(Controller());

    return Scaffold(
      // Gunakan Obx(() => ...) untuk mengupdate Text() ketika `count` berubah.

      // Ganti 8 baris Navigator.push menggunan Get.to() agar lebih sederhana. Anda tidak perlu `context`.
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Jadikan angka dibawah ini menjadi $target', style: TextStyle(fontSize: 24),)),
              SizedBox(height: 50),
              Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(color: Colors.red,child: Column(
                    children: [
                      Text('${cont.a}', style: TextStyle(fontSize: 35)),
                      RaisedButton(onPressed: cont.btnA, child: Text('A')),
                    ],
                  )),
                  Card(color: Colors.blue,child: Column(
                    children: [
                      Text('${cont.b}', style: TextStyle(fontSize: 35)),
                  RaisedButton(onPressed: cont.btnB, child: Text('B')),
                    ],
                  )),
                  Card(color: Colors.green,child: Column(
                    children: [
                      Text('${cont.c}', style: TextStyle(fontSize: 35)),
                  RaisedButton(onPressed: cont.btnC, child: Text('C')),
                    ],
                  )),
                ],
              )),
            ],
          )
        ],
      )));
  }
}
