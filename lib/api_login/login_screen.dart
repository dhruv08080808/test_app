import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/api_login/api_login_screen.dart';

class LoginScreen extends StatelessWidget {

  final TextEditingController emailcontroller=TextEditingController();
  final TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                getuserapi(email:emailcontroller.text.trim() , password: passwordcontroller.text.trim());
                 
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}