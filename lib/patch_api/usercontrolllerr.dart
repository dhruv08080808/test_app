import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/patch_api/product_model.dart';
import 'package:test_app/patch_api/user_model.dart';
import 'package:http/http.dart' as http;

class usercontrolllerr extends GetxController {
  var Listttt = <ProductssModel>[].obs;
  ProductssModel? product;
  var token =
      '9b7e5c464fa0ccda9d5cab213d525f2f015a3161335a89ff78a5b4a7fbc3ddad';
  UserModel? usermodel;
  ProductssModel? productmodelll;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController statuscontroller = TextEditingController();

  fetchuserdata(String userid) async {
    try {
      var headers = {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      };
      http.Response response = await http.get(
          Uri.tryParse('https://gorest.co.in/public/v2/users/${userid}')!,
          headers: headers);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        print(result);
        usermodel = UserModel.fromJson(result);
        emailcontroller.text = result['email'];
        namecontroller.text = result['name'];
        gendercontroller.text = result['gender'];
        statuscontroller.text = result['status'];
      } else {
        print("Error Fetching Data");
      }
    } catch (e) {
      print("Error Occured $e");
    }
  }

  updateuserdata(String userid) async {
    try {
      var body = {
        'name': namecontroller.text,
        'email': emailcontroller.text,
        'status': statuscontroller.text,
        'gender': gendercontroller.text,
      };
      http.Response responsee = await http.put(
          Uri.parse('https://gorest.co.in/public/v2/users/$userid'),
          body: jsonEncode(body),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
            "Authorization": "Bearer $token",
          });
      if (responsee.statusCode == 200) {
        final json = jsonDecode(responsee.body);
        print('data updated');
        print(json);
      } else {
        print('print response data not found');
        throw jsonDecode(responsee.body)['meta']['message'] ??
            "unknown error occured";
      }
    } catch (e) {
      print(e);
    }
  }

  deleteuserdata() async {}
}

fetchdata() async {
  //ProductssModel? product;
  var token =
      '9b7e5c464fa0ccda9d5cab213d525f2f015a3161335a89ff78a5b4a7fbc3ddad';
  try {
    var headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer $token",
    };

    http.Response response =
        await http.get(Uri.tryParse('www')!, headers: headers);
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body);
      print(res);

    
    } else {
      print('Something Went Wrong Try Again');
    }
  } catch (e) {
    print(e.toString());
  }
}
