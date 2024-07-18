import 'package:get/get.dart';

class Favcontroller extends GetxController{
  RxList<String> getdata=['apple','orange','mango','grapes'].obs;
  RxList getdefaultdata=[].obs;

  addnewitem(String item){
    getdefaultdata.add(item);
  }
  removeitem(String item){
    getdefaultdata.remove(item);
  }
}