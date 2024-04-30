import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'dart:core';

import 'package:webview_flutter/webview_flutter.dart';
class HomeShorts extends StatefulWidget {
  const HomeShorts({super.key});

  @override
  State<HomeShorts> createState() => _HomeShortsState();
}

class _HomeShortsState extends State<HomeShorts> {
 late WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
             Center(child: Container(
                 height: double.infinity,
                 child: WebView("https://www.youtube.com/shorts/4artdBqL-tE", aspectRatio: 15,js: true,)))
            ],
          ),
        ),
      ),
    );
  }
}
