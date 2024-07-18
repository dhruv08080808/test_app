import 'package:test_app/api/user_model.dart';
import 'package:http/http.dart' as http;
class User_api2{
  Future<Welcome>getuserdata()async{
var ress= await http.get(Uri.parse('https://reqres.in/api/users?page2'));
if(ress.statusCode==200){
  print(ress.statusCode);
return  welcomeeFromJson(ress.body);
}else{
   throw Exception('network error');
}

}
}