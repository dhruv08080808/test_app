import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:test_app/patch_api/usercontrolllerr.dart';

class getdata extends StatefulWidget {
  const getdata({super.key});

  @override
  State<getdata> createState() => _getdataState();
}

class _getdataState extends State<getdata> {
  var getcotroller  = Get.put(usercontrolllerr());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),




















      // body: GestureDetector(
      //   onTap: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => Scaffold(
      //           appBar: AppBar(
      //             title: Text('Second Screen'),
      //           ),
      //           body: GestureDetector(
      //             onTap: () {
      //               Navigator.pop(context);
      //             },
      //             child: Center(
      //               child: Hero(
      //                 tag: 'imageHero',
      //                 child: Container(
      //                   width: 200.0,
      //                   height: 200.0,
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(100.0),
                       
      //                   ),
      //                   child:Icon(Icons.apple,size: 200,),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      //   child: Center(
      //     child: Hero(
      //       tag: 'imageHero',
      //       child: Container(
      //         width: 100.0,
      //         height: 100.0,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(50.0),
              
      //         ),
      //         child: Icon(Icons.apple,size: 100,),
      //       ),
      //     ),
      //   ),
      // ),
    );
  
}
  }
