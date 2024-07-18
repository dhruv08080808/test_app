import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:badges/badges.dart';
import 'package:badges/badges.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:test_app/Shopping%20cart/Shoppingget.dart';
import 'package:test_app/Shopping%20cart/db_helper.dart';
import 'package:test_app/Shopping%20cart/product_model.dart';
import 'package:test_app/controller.dart';

import 'cart_provider.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
// double gettotal() {
//   double total = 0.0;
//   for (int i = 0; i < productName.length; i++) {
//     total += numbers[i] * productPrice[i];
//   }
//   return total;
// }

  // List<int>numbers=[1,1,1,1,1,1,1];
//   void increment(int index){
// setState(() {
//   numbers[index]++;
// });
//   }
//    void deincrement(int index){

//     if(numbers[index]<=0){
//       SnackBar(content: Text('INVALID'));
//     }else{
//       setState(() {
//   numbers[index]--;
// });
//     }

//   }

//final controller=Get.put(ShoppingGetx());
 

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (BuildContext context, v, Widget? child) =>
      Scaffold(
        appBar: AppBar(
          title: Text('PROUCT LIST SCREEN', style: TextStyle(fontSize: 18)),
          centerTitle: true,
          actions: [
            Icon(Icons.shopping_bag),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: v.productName.length,
                  itemBuilder: (context, i) {
                    return Dismissible(
                      key: Key(v.productName[i]),
                      direction: DismissDirection.endToStart,
                      background: Container(color: Colors.red),
                      onDismissed:(direction) {
                        setState(() {
                          v.productName.removeAt(i);
                        });
                        
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Text(
                                    v.productName[i],
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(width: 26),
                                  Text(" ₹" + v.productPrice[i].toString(),
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w500)),
                                  Spacer(),
                                  Row(
                                    children: [
                                       GestureDetector(
                                        onTap: (){
                                 v.substract(i);
                                        },
                                        child: Icon(Icons.remove)),
                                  
                                      SizedBox(width: 10),
                                   Text( v.Numbers[i].toString()),
                                         SizedBox(width: 10),
                                       InkWell(
                                        onTap: (){
                                        v.add(i);
                                        },
                                        child: Icon(Icons.add,size: 25)),
                                      SizedBox(width: 10),
                                     
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                           
                          ],
                        ),
                      ),
                    );
                  }),
            ),
             Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(' TOTAL :- ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                                    Container(
                                     
                                      decoration:  BoxDecoration(
                               color: Colors.amber,
                              borderRadius: BorderRadius.circular(18)
                                      ),
                                      height: 50,
                                      width: 80,
                                      child: Center(child: Text('\₹${v.gettotal().toString()}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),)))
                                  ],
                                ),
                              ),
                            )
          ],
        ),
      ),
    );
  }
}
