import 'package:get/get.dart';
import 'package:test_app/datafile/model/product_model.dart';

class ProductController extends GetxController{
List<int> number=[1,1,1,1,1].obs;
List<ProductModel> carditem=[];
addtocart(ProductModel card){
  carditem.add(card);

}

double get  gettotalprice=>carditem.fold(0,(sum,item)=>sum + item.price);
int get count=>carditem.length;

increment(int index){
  number[index]++;
}
  
}