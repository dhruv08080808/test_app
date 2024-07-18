import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:test_app/api/controller.dart';
import 'package:test_app/controller.dart';
import 'package:test_app/datafile/datafile.dart';
import 'package:test_app/datafile/model/employee_model.dart';

class Userscreen extends StatefulWidget {
  const Userscreen({super.key});

  @override
  State<Userscreen> createState() => _UserscreenState();
}

class _UserscreenState extends State<Userscreen> {
  List<employee> getemployeedata=datafile.employeestatus;
  var controlller = Get.put(controllerrr());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Api dataa',
                style: TextStyle(fontSize: 20, color: Colors.red))),
        body: Obx(() {
          if (controlller.isloading.value) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Column(children: [
              SizedBox(
                height: 500,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(controlller.userlist[i].title),
                        subtitle: Text(controlller.userlist[i].description),
                      );
                    },
                    separatorBuilder: (context, i) {
                      return SizedBox(height: 10);
                    },
                    itemCount: controlller.userlist.length),
              )
            ]);
          }
        }));
  }
}
