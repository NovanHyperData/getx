import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Presenter{
  var name = 'NovAn'.obs;
  var age = 0.obs;
  var theme = false.obs;

  upper(){
    name.value = name.toUpperCase();
  }
  lower(){
    name.value = name.value = name.toLowerCase();
  }
  now(){
    age.value = 16;
  }
  plus(){
    age++;
  }
  minus(){
    age--;
  }
  changeTheme(){
    theme.value = !theme.value;
  }


}