import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetBuilder/View.dart';
import 'package:getx/Getx/View.dart';
import 'package:getx/MultipleOBX/Presenter.dart';
import 'package:getx/MultipleOBX/View.dart';
import 'package:getx/MyGame/View.dart';
import 'package:getx/miniMVP/View.dart';
import 'package:getx/obx/HomePage.dart';
import 'package:getx/withModel/View.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final pr = Get.put(Presenter()); //MultipleObx
  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          title: 'Flutter Demo',
          theme: pr.theme.value
              ? ThemeData.dark()
              : ThemeData.light(), //MultipleObx
          debugShowCheckedModeBanner: false,
          initialRoute: '/menu',
          routes: <String, WidgetBuilder>{
            '/menu': (_) => Menu(),
            '/obx': (_) => HomePage(),
            '/game': (_) => View(),
            '/multiobx': (_) => MultipleObx(),
            '/withmodel': (_) => withModel(),
            '/minimvp': (_) => miniMVP(),
            '/getx': (_) => Getx(),
            '/getbuilder': (_) => GetBuilders(),
          },
        ));
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/getx');
            },
            child: Text('Getx'),
            color: Colors.yellow,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/obx');
                  },
                  child: Text('Obx'),
                  color: Colors.blue,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/multiobx');
                  },
                  child: Text('Multiple obx'),
                  color: Colors.green,
                ),
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/game');
            },
            child: Text('game'),
            color: Colors.red,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/withmodel');
                  },
                  child: Text('With Model'),
                  color: Colors.pink,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/minimvp');
                  },
                  child: Text('Mini MVP'),
                  color: Colors.amber,
                ),
              ],
            ),
          ),
          
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/getbuilder');
            },
            child: Text('Get Builder'),
            color: Colors.purple,
          )
        ],
      )),
    );
  }
}
