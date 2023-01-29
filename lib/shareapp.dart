import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class shareapp extends StatefulWidget {
  const shareapp({super.key});

  @override
  State<shareapp> createState() => _shareappState();
}

class _shareappState extends State<shareapp> {
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
                    initialUrl: "assets/shareapp.html",
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
