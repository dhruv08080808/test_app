import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/api/controller.dart';
import 'package:test_app/api_login/api_login_screen.dart';
import 'package:test_app/patch_api/usercontrolllerr.dart';

class userrrscreeen extends StatelessWidget {

var Controlllerrr=Get.put(usercontrolllerr());
TextEditingController useridcontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                controller:Controlllerrr.namecontroller ,
                  decoration: InputDecoration(
                  
                    hintText: 'NAME',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                 controller:Controlllerrr.emailcontroller ,
                  decoration: InputDecoration(
                    hintText: 'EMAIL',
                    border: OutlineInputBorder(),
                  ),
                 
                ),
                SizedBox(height: 20),
                TextField(
                 controller:Controlllerrr.gendercontroller ,
                  decoration: InputDecoration(
                    hintText: 'GENDER',
                    border: OutlineInputBorder(),
                  ),
                  
                ),
                SizedBox(height: 20),
                  TextField(
                    controller:Controlllerrr.statuscontroller ,
                  decoration: InputDecoration(
          
                    hintText: 'STATUS',
                    border: OutlineInputBorder(),
                  ),
               
                ),
                SizedBox(height: 20),
                  TextField(
                     controller:useridcontroller ,
                  decoration: InputDecoration(
                    hintText: 'USER ID',
                    border: OutlineInputBorder(),
                  ),
                //6875555
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                  Controlllerrr.fetchuserdata(useridcontroller.text);
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 10),
                 ElevatedButton(
                  onPressed: () {
                    Controlllerrr.updateuserdata(useridcontroller.text);
                  },
                  child: Text('update'),
                ),
                SizedBox(height: 10),
                 ElevatedButton(
                  onPressed: () {
                  //  Controlllerrr.fetchuserdata(useridcontroller.text);
                  },
                  child: Text('delete'),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}