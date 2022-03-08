import 'dart:math';

import 'package:get/get.dart';

class Controller extends GetxController{
  var a = Random().nextInt(9).obs;
  var b = Random().nextInt(9).obs;
  var c = Random().nextInt(9).obs;
  var reset = 0.obs;

  increment(){
    a++;
    b++;
    c--;
  }

  btnA(){
    if(a >= 9 && b <= 9){
      a.value = 0;
      b++;
    }else if(b >= 9 && a <= 9){
      b.value = 0;
      a++;
    }else{
    a++;
    b++;
    }
  }

  btnB(){
    if (b >= 9 && c <= 9) {
      b.value = 0;
      c++;
    }else if(c >= 9 && b <= 9){
      c.value = 0;
      b++;
    } else {
      b++;
      c++;
    }
  }

  btnC(){
    if (a >= 9 && c <= 9) {
      a.value = 0;
      c++;
    }else if(c >= 9 && a <= 9){
      c.value = 0;
      a++;
    } else {
      a++;
      c++;
    }
  }
}