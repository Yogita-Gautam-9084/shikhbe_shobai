import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebView2 extends StatefulWidget {
  const WebView2({Key? key}) : super(key: key);

  @override
  State<WebView2> createState() => _WebView2State();
}

class _WebView2State extends State<WebView2> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.google.com/',
    );
  }
}
