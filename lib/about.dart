import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class aboutpage extends StatefulWidget {
  const aboutpage({super.key});

  @override
  State<aboutpage> createState() => _aboutpageState();
}

class _aboutpageState extends State<aboutpage> {
  late WebViewPlusController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: WebViewPlus(
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: "assets/about.html",
                    onWebViewCreated: (controller) {
                      setState(() {
                        this.controller = controller;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
