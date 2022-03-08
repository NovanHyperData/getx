import 'package:get/get.dart';
import 'package:getx/miniMVP/Model.dart';

class Presenters extends GetxController{
  var model = Model();

  upper(){
    model.name.value = model.name.value.toUpperCase();
  }
  lower(){
    model.name.value = model.name.value.toLowerCase();
  }
  plus(){
    model.age.value++;
  }
  minus(){
    model.age.value--;
  }
}