import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:test_app/controller.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  var mycontroller=Get.put(controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
         
         GetX<controller>(
          init: mycontroller,
          builder: (controller1)=>
       Text('${controller1.count}')),
        
        
        ElevatedButton(onPressed: (){
          var findd=Get.find<controller>();
          //findd.increment();
          mycontroller.increment();
        }, child: Text('CLICK HERE'))
          ],),
        ),
      ),
    );
  }
}