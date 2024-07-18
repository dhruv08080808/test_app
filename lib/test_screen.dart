// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:url_launcher/url_launcher.dart';

// class TestScreen extends StatefulWidget {
//   const TestScreen({Key? key}) : super(key: key);

//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }

// class _TestScreenState extends State<TestScreen> {
//   void _launchURL() async {
//     const url = 'https://www.filehorse.com/download-java-runtime-64/download/';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//    double _progress = 0;
//   late InAppWebViewController  inAppWebViewController;// Set your initial URL here

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('ABCD')),
//       body: Stack(
//         children: [
//           InAppWebView(
//           initialUrlRequest: URLRequest(
//             url: Uri.parse('https://flutter.dev'),
//           ),
//             onWebViewCreated: (InAppWebViewController controller){
//                   inAppWebViewController = controller;
//                 },
//                 onProgressChanged: (InAppWebViewController controller , int progress){
//                   setState(() {
//                     _progress = progress / 100;
//                   });
//                 },
//         ),
//          _progress < 1 ? Container(
//                 child: LinearProgressIndicator(
//                   value: _progress,
//                 ),
//               ):SizedBox()
//         ],
//       ),
//     );
//   }
// }

