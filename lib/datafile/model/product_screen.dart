import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:test_app/datafile/datafile.dart';
import 'package:test_app/datafile/model/product_model.dart';
import 'package:test_app/datafile/model/productcontroller.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var controllerr=Get.put(ProductController());
  var controller=Get.put(ProductController());
    List<ProductModel> listofproducts=datafile.productlist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopping Cart',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black))),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context,i){
              ProductModel allproducts=listofproducts[i];
            return Column(
              children: [
                Row(children: [
                  Text(allproducts.product,style: TextStyle(fontSize: 20)),
                  InkWell(
                    onTap: (){
                      controller.increment(i);
                    },
                    child: Icon(Icons.add)),
                  SizedBox(width: 20),
                 // Text(allproducts.no,style: TextStyle(fontSize: 20)),
                  Obx(() {
           return Text(controller.number[i].toString(),style: TextStyle(fontSize: 59),);
           }),
             SizedBox(width: 20),
                  Text('-',style:TextStyle(fontSize: 50,fontWeight: FontWeight.w500))
                ],)
              ],
            );
            }, separatorBuilder: (context,i){
            return SizedBox(height: 10);
            }, itemCount:listofproducts.length),
          ),
        ],
      )
    );
  }
}