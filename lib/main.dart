import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/demopage.dart';
import 'package:flutter_application_4/pages/radiyo.dart';
import 'package:flutter_application_4/pages/taligram.dart';
import 'package:flutter_application_4/pages/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      //home: const DrawerPage(),
      //home: const DemoPage(),
      //home: const  RadiuoPage(),
      home: const WebviewPage(),
    );
  }
}

