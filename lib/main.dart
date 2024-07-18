import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/patch_api/get_data.dart';
import 'package:test_app/patch_api/userrscreeen.dart';
import 'package:test_app/provider/List_provider.dart';
import 'package:test_app/provider/User_Screen.dart';
import 'package:test_app/sharedprefrences/login.dart';
import 'package:test_app/sharedprefrences/splashscreen.dart';
import 'package:test_app/test_screen.dart';

import 'Shopping cart/cart_provider.dart';
import 'Shopping cart/product_list.dart';
import 'api/routes/app_pages.dart';
import 'api/user_screen.dart';
import 'api_login/login_screen.dart';
import 'datafile/model/product_screen.dart';
import 'demoscreen.dart';
import 'favorite_app/fav_screen.dart';
import 'nodejs/screens/api_screen.dart';

Future main() async{
  
    WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>ListProvider()),
        ChangeNotifierProvider(create: (context)=>CartProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: "/",
        //routes: AppPages.routes,
        home: Api_Screen()
      ),
    );
  }
}


