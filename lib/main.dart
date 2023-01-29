import 'package:dataprogramming/drawerpage.dart';
import 'package:dataprogramming/shareapp.dart';
import 'package:dataprogramming/showitem.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'listitempage.dart';

void main(List<String> args) {
  runApp(dartApp());
}

class dartApp extends StatelessWidget {
  const dartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool iconBool = true;
  IconData sun = Icons.sunny;
  IconData moon = Icons.monochrome_photos;
  ThemeData lightmode = ThemeData(brightness: Brightness.light);
  ThemeData darkmode = ThemeData(brightness: Brightness.dark);

  List<Book> bookitem = books;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: iconBool ? lightmode : darkmode,
      home: Scaffold(
        drawer: drawers(),
        appBar: AppBar(
          toolbarHeight: 90.0,
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => shareapp()));
                  });
                },
                icon: Icon(
                  Icons.share,
                  size: 29,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 150.0,
                            width: 150.0,
                            child: AlertDialog(
                              title: Text("Rate app"),
                              content: Container(
                                height: 100,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text(
                                          "lets rate the app by your satisfaction if you give me us the five start then we have make our very much helpful app, but if we dont hami sudharna xau , lets wait for the better performance app")
                                    ],
                                  ),
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.pop(context);
                                      });
                                    },
                                    child: Text("cancel")),
                                TextButton(onPressed: () {}, child: Text("Ok")),
                              ],
                            ),
                          );
                        });
                  });
                },
                icon: Icon(Icons.favorite_outline_outlined, size: 29)),
            IconButton(
                onPressed: () {
                  setState(() {
                    iconBool = !iconBool;
                  });
                },
                icon: Icon(
                  iconBool ? sun : moon,
                  size: 29,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 900),
                            type: PageTransitionType.topToBottom,
                            child: listitempage()));
                  });
                },
                icon: Icon(Icons.search, size: 29)),
          ],
        ),
        body: SafeArea(
            child: ListView.builder(
                itemCount: bookitem.length,
                itemBuilder: ((context, index) {
                  final book = bookitem[index];
                  return Card(
                      elevation: 5.0,
                      color: Colors.black,
                      child: ListTile(
                        trailing: Icon(
                          Icons.fire_truck,
                          color: Colors.red,
                        ),
                        title: Text(
                          book.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "lets learn together",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                PageTransition(
                                    duration: Duration(milliseconds: 900),
                                    type: PageTransitionType.leftToRight,
                                    child: showitem(
                                      bookitems: book,
                                    )));
                          });
                        },
                      ));
                }))),
      ),
    );
  }
}
