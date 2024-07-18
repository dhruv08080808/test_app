import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test_app/nodejs/screens/api.dart';

class Api_Screen extends StatefulWidget {
  const Api_Screen({super.key});

  @override
  State<Api_Screen> createState() => _Api_ScreenState();
}

class _Api_ScreenState extends State<Api_Screen> {
  final TextEditingController namecontroller=TextEditingController();
final TextEditingController desccontroller=TextEditingController();

final TextEditingController pricecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextFormField(
        controller: namecontroller,
          decoration: InputDecoration(
hintText: "enter the product name",

          ),
        ),
        SizedBox(height: 20,),
        TextFormField(
        controller: pricecontroller,
          decoration: InputDecoration(
hintText: "enter the product price",

          ),
        ),
        SizedBox(height: 20,),
        TextFormField(
        controller: desccontroller,
          decoration: InputDecoration(
hintText: "enter the product description",

          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
var data={
  "pname":namecontroller.text,
  "pprice":pricecontroller.text,
  "pdesc":desccontroller.text
};
Api.addproduct(data);
        }, child: Text('submit'))
      ],),
    );
  }
}