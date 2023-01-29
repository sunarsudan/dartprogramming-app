import 'package:dataprogramming/about.dart';
import 'package:dataprogramming/main.dart';
import 'package:dataprogramming/shareapp.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:share_plus/share_plus.dart';
import 'package:page_transition/page_transition.dart';

class drawers extends StatefulWidget {
  const drawers({super.key});

  @override
  State<drawers> createState() => _drawersState();
}

class _drawersState extends State<drawers> {
  late WebViewPlusController controller;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(238, 0, 0, 0),
          ),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 2, 30, 53)),
                  arrowColor: Colors.red,
                  currentAccountPicture: Image.asset("assets/sudan.jpg"),
                  accountName: Text("sudan sunar"),
                  accountEmail: Text("sudansunar404@gmail.com")),
              ListTile(
                hoverColor: Colors.red,
                selectedColor: Colors.red,
                leading: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  });
                },
              ),
              ListTile(
                hoverColor: Colors.red,
                selectedColor: Colors.red,
                leading: Icon(
                  Icons.bookmark,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  "Abouts us",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => aboutpage()));
                  });
                },
              ),
              ListTile(
                hoverColor: Colors.red,
                selectedColor: Colors.red,
                leading: Icon(
                  Icons.apps,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  "More application",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              ListTile(
                hoverColor: Colors.red,
                selectedColor: Colors.red,
                leading: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  "Rate and review",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              ListTile(
                hoverColor: Colors.red,
                selectedColor: Colors.red,
                leading: Icon(
                  Icons.contact_support_sharp,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  "Contact",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              ListTile(
                hoverColor: Colors.red,
                selectedColor: Colors.red,
                leading: Icon(
                  Icons.share,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text(
                  "Share app",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => shareapp()));
                  });
                },
              ),
            ],
          )),
    );
  }
}
