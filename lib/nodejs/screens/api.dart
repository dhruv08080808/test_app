import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  static const baseurl = "http://10.60.7.144/api/";

  
  static addproduct(Map pdata) async {
  print(pdata);
    var url = Uri.parse("${baseurl}add_product");
    try {
      final res = await http.post(url, body: pdata);
      if (res.statusCode == 200) {
        var dataa = jsonDecode(res.body.toString());
        print(dataa);
      } else {
        print("failed to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
