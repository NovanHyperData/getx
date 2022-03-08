import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/miniMVP/Presenter.dart';

class miniMVP extends StatelessWidget {
  final presenter = Get.put(Presenters());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Obx(() => Text('Nama : ${presenter.model.name}'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Umur : ${presenter.model.age}')),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(onPressed: presenter.upper, child: Text('Upper')),
                RaisedButton(onPressed: presenter.lower, child: Text('Lower')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(onPressed: presenter.plus, child: Text('Plus')),
                RaisedButton(
                    onPressed: presenter.minus, child: Text('Minus')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
