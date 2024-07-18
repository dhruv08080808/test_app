
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/Shopping%20cart/product_model.dart';

import 'db_helper.dart';

class CartProvider with ChangeNotifier{

  // DBHelper db = DBHelper() ;
  // int _counter = 0 ;
  // int get counter => _counter;

  // double _totalPrice = 0.0 ;
  // double get totalPrice => _totalPrice;

  // late Future<List<Cart>> _cart ;
  // Future<List<Cart>> get cart => _cart ;

  // Future<List<Cart>> getData () async {
  //   _cart = db.getCartList();
  //   return _cart ;
  // }


  // void _setPrefItems()async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance() ;
  //   prefs.setInt('cart_item', _counter);
  //   prefs.setDouble('total_price', _totalPrice);
  //   notifyListeners();
  // }

  // void _getPrefItems()async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance() ;
  //   _counter = prefs.getInt('cart_item') ?? 0;
  //   _totalPrice = prefs.getDouble('total_price') ?? 0.0;
  //   notifyListeners();
  // }


  // void addTotalPrice (double productPrice){
  //   _totalPrice = _totalPrice +productPrice ;
  //   _setPrefItems();
  //   notifyListeners();
  // }

  // void removeTotalPrice (double productPrice){
  //   _totalPrice = _totalPrice  - productPrice ;
  //   _setPrefItems();
  //   notifyListeners();
  // }

  // double getTotalPrice (){
  //   _getPrefItems();
  //   return  _totalPrice ;
  // }


  // void addCounter (){
  //   _counter++;
  //   _setPrefItems();
  //   notifyListeners();
  // }

  // void removerCounter (){
  //   _counter--;
  //   _setPrefItems();
  //   notifyListeners();
  // }

  // int getCounter (){
  //   _getPrefItems();
  //   return  _counter ;

  // }
   List<String> productName = [
    'Mango',
    'Orange',
    'Grapes',
    'Banana',
    'Chery',
    'Peach',
    'Mixed Fruit ',
  ];
  List<String> productUnit = [
    'KG',
    'Dozen',
    'KG',
    'Dozen',
    'KG',
    'KG',
    'KG',
  ];
  List<int> productPrice = [10, 20, 30, 40, 50, 60, 70];
List<int> Numbers=[1,1,1,1,1,1,1];

void add(int index){
  Numbers[index]++;
    notifyListeners();
 
}

void substract(int index){
  if(Numbers[index]<=0){
    SnackBar(content: Text('INVALID INPUT'));
  }else{
 Numbers[index]--;
  }
  
     notifyListeners();
}
double gettotal(){
  double gettotalamt=0.0;
 for (int i = 0; i < productName.length; i++){
  gettotalamt += Numbers[i]*productPrice[i];
 }
 return gettotalamt;

  }
}
