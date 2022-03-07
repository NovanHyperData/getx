import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/MyGame/View.dart';
import 'package:getx/observer%20(obs)/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/game',
      routes: <String, WidgetBuilder>{
        '/observer': (_) => HomePage(),
        '/game': (_) => View(),
      },
    );
  }
}
