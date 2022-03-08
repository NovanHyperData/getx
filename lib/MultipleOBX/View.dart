import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/MultipleOBX/Presenter.dart';

class MultipleObx extends StatelessWidget {
  const MultipleObx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final pr = Get.find<Presenter>();

    return Scaffold(
      
      appBar: AppBar(
        title: Obx(() => Text('Nama : ${pr.name}')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'Umur : ${pr.age}',
                    style: TextStyle(fontSize: 35),
                  ))
            ],
          ),
          SizedBox(height: 100),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: pr.changeTheme, child: Text('Change Theme'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: pr.upper, child: Text('Upper')),
              RaisedButton(onPressed: pr.lower, child: Text('Lower'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: pr.plus, child: Text('Plus')),
              RaisedButton(onPressed: pr.now, child: Text('Now')),
              RaisedButton(onPressed: pr.minus, child: Text('Minus'))
            ],
          )
        ],
      ),
    );
  }
}
