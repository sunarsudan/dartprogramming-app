import 'package:dataprogramming/listitempage.dart';
import 'package:flutter/material.dart';

class showitem extends StatelessWidget {
  final Book bookitems;
  showitem({
    Key? key,
    required this.bookitems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.pink,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              bookitems.name,
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Text(bookitems.description),
            )
          ],
        ),
      )),
    );
  }
}
