import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    String url = 'https://m.santrimart.co.id/';

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: WebviewScaffold(
            url: url,
            withLocalStorage: true,
            allowFileURLs: true,
            appCacheEnabled: true,
            clearCache: true,
            withJavascript: true,
            withLocalUrl: true,
            mediaPlaybackRequiresUserGesture: true,
            scrollBar: true,
            supportMultipleWindows: true,
          ),
          // child: WebViewSca(
          //   initialUrl: url,
          //   javascriptMode: JavascriptMode.unrestricted,
          //   allowsInlineMediaPlayback: true,
          //   debuggingEnabled: true,
          //   gestureNavigationEnabled: true,
          // ),
        ),
      ),
    );
  }
}
