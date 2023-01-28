import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final WebViewController _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(NavigationDelegate(onPageStarted: (String uri) {
      print("Page Start:" + uri);
    }, onPageFinished: (String uri) {
      print("Page End:" + uri);
    }))
    ..loadRequest(Uri.parse("https://tinyyard.dev"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // title: const Text("My Blog"),
        // centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                _controller.loadRequest(Uri.parse("https://tinyyard.dev"));
              },
              icon: const Icon(Icons.home))
        ],
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
