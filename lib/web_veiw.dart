import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebView1 extends StatefulWidget {
  const WebView1({Key? key}) : super(key: key);

  @override
  State<WebView1> createState() => _WebView1State();
}

class _WebView1State extends State<WebView1> {
  @override
  Widget build(BuildContext context) {
    return WebView(
       initialUrl: 'https://www.facebook.com',
    );
  }
}


