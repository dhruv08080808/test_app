import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:test_app/provider/List_provider.dart';
import 'package:test_app/provider/admin_screen.dart';

class UserScreenn extends StatefulWidget {
  const UserScreenn({super.key});

  @override
  State<UserScreenn> createState() => _UserScreennState();
}

class _UserScreennState extends State<UserScreenn> {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>( builder: (context, value, child) => Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
value.add();
      },child: Icon(Icons.add),),
    appBar: AppBar(title: Text('PROVIDER EXAMPLE')),
    body: Column(
      children: [
        Text(value.numbers.last.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
        
        SizedBox(height: 25,),
    Expanded(
      //height: 200,
      child: ListView.builder(
        itemCount: value.numbers.length,
        itemBuilder: (context,i){
      return Column(children: [
        Text(value.numbers[i].toString(),style: TextStyle(fontSize: 22),)
      ]);
      }),
    ),
    ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>AdminSreen() ) );
    }, child: Text('SUBMIT'))
    ],),
      ),
    
    );
  }
}