import 'package:get/get.dart';

class counterController extends GetxController{
  var count = 0.obs;

  // bentuk A
  // increment() => count++;

  // bentuk B
  increment(){
    count++;
  }
}