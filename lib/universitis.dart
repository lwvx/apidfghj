import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UniversitiesView extends StatefulWidget {
  const UniversitiesView({super.key, required this.url});
  final String url;
  @override
  State<UniversitiesView> createState() => _UniversitiesViewState();
}

class _UniversitiesViewState extends State<UniversitiesView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
