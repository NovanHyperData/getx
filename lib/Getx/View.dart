import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx/Presenter.dart';

class Getx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<Presenterr>(
              init: Presenterr(),
              builder: (controller) {
                return Text('data ${controller.num.value}', style: TextStyle(fontSize: 35));
              },
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(onPressed: (){
                  Get.find<Presenterr>().increment();
                }, child: Text('Plus')),
                RaisedButton(onPressed: (){
                  Get.find<Presenterr>().decrement();
                }, child: Text('Minus'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
