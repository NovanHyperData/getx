import 'package:get/get.dart';

class Presenterrr extends GetxController{
  var num = 0;

  increment(){
    num++;
    update();
  }
  decrement(){
    num--;
    update();
  }

}