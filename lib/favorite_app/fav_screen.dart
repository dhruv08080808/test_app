import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:test_app/favorite_app/fav_controller.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  final controller=Get.put(Favcontroller());
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
  body: ListView.separated(itemBuilder: (context,i){
    return Card(
      child: ListTile(
        onTap: (){
          if(controller.getdefaultdata.contains(controller.getdata[i])){
controller.removeitem(controller.getdata[i].toString());
          }else{
            controller.addnewitem(controller.getdata[i].toString());
          }
        },
        title:Text(controller.getdata[i]),
        trailing: Obx(() => Icon(Icons.favorite,color: controller.getdefaultdata.contains(controller.getdata[i].toString())?Colors.red:Colors.white),)
      ),
    );
  }, separatorBuilder: (context,i){

    return SizedBox(height: 10);
  }, itemCount:controller.getdata.length ),
    );
  }
}