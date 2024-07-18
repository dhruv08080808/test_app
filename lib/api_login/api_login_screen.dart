
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic>getuserapi( { required String email,  required String password})async{
    var headers = {
  'Content-Type': 'application/x-www-form-urlencoded'
};
var request = http.Request('GET', Uri.parse('https://reqres.in/api/register'));
request.bodyFields = {
  'email': email,
  'password': password
};
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();
var resp=jsonDecode(await response.stream.bytesToString());
print(resp);

if (response.statusCode == 200) {
 print('sucessfully');
}
else {
 print(' not sucessfully');
}

}