import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ShoppingGetx extends GetxController{
  List<int> counter=[1,1,1,1,1,1,1,1,1,1].obs;
  void add(int index){
    counter[index]++;
  }
  void substract(int index){
    if(counter[index]<=0){
Get.snackbar('ERROR', 'IT CAN NOT BE LESS THAN 0'

);
    } else{
      counter[index]--;
    }
  }
}