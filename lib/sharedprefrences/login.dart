import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/sharedprefrences/home_screen.dart';
import 'package:test_app/sharedprefrences/splashscreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static const String LOGINKEY='login';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Padding(
    padding: const EdgeInsets.all(20),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'EMAIL'
      ),
    ),
  ),
  SizedBox(height: 20),
  Padding(
    padding: const EdgeInsets.all(20),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'password'
      ),
    ),
  ),

  SizedBox(height: 20),
  ElevatedButton(onPressed: ()async{
    var shared= await SharedPreferences.getInstance();
    shared.setBool(SplashScreenState.LOGIN_KEY, true);
    Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Homescreen()),
            );
  }, child: Text('SUBMIT'))
],),
    );
  }
  
}