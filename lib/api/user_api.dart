import 'package:test_app/api/user_model.dart';
import 'package:http/http.dart' as http;



class Userapi{
  Future<List<Welcome>>getdata()async{
    var res=await http.get(Uri.parse('https://fakestoreapi.com/products/category/jewelery'));
    // var res2=await http.patch(Uri.parse('https://jsonplaceholder.typicode.com/posts'))
    if(res.statusCode==200){
      print(res.statusCode);
      return welcomeFromJson(res.body);
    }else{
      throw Exception('network error');
    }
  }
}
// class Userpostapi{
//   Future<List<Welcome>>getdata(String data)async{
  
//    // var res=await http.get(Uri.parse('https://fakestoreapi.com/products/category/jewelery'));
//     var res2=await http.patch(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//     if(res2.statusCode==200){
//       print(res2.statusCode);
//       return welcomeFromJson(res2.body);
//     }else{
//       throw Exception('network error');
//     }
//   }
// }
