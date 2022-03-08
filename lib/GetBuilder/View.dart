import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetBuilder/Presenter.dart';

class GetBuilders extends StatelessWidget {
  final pres = Get.put(Presenterrr());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Presenterrr>(
              builder: (controller) {
                return Text('data ${controller.num}', style: TextStyle(fontSize: 35));
              },
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(onPressed: (){
                  pres.increment();
                }, child: Text('Plus')),
                RaisedButton(onPressed: (){
                  pres.decrement();
                }, child: Text('Minus'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
