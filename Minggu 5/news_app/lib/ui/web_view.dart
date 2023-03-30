import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  static const routeName = '/article_web';

  const ArticleWebView(this.url);

  final String url;

  @override
  Widget build(BuildContext context) {
    // final WebViewController controller =
    //     WebViewController.fromPlatformCreationParams(
    //         const PlatformWebViewControllerCreationParams());
    // controller
    //   ..setJavaScriptMode(JavaScriptMode.unrestricted)
    //   ..loadRequest(Uri.parse(url));

    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: WebView(initialUrl: url),
    );
  }
}
