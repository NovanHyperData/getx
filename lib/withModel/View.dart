import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/withModel/Model.dart';

class withModel extends StatelessWidget {
  var magang = Model(name: 'NoVAn', age: 16).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() => Text('Nama : ${magang.value.name}')),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Umur : ${magang.value.age}',
                style: TextStyle(fontSize: 25))),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    onPressed: () {
                      magang.update((val) {
                        magang.value.name =
                            magang.value.name.toString().toUpperCase();
                      });
                    },
                    child: Text('Upper')),
                RaisedButton(
                    onPressed: () {
                      magang.update((val) {
                        magang.value.name =
                            magang.value.name.toString().toLowerCase();
                      });
                    },
                    child: Text('Lower'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    onPressed: () {
                      magang.update((val) {
                        magang.value.age++;
                      });
                    },
                    child: Text('Plus')),
                RaisedButton(
                    onPressed: () {
                      magang.update((val) {
                        magang.value.age--;
                      });
                    },
                    child: Text('Minus'))
              ],
            )
          ],
        )));
  }
}
