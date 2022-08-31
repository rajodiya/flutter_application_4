import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({Key? key}) : super(key: key);

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
   bool _ischeck = false;
  List cities =["Surat","Ahmedabad","Bombay"];
  String currentcity = "Surat";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.voot.com/',
      ),
    );
  }
}