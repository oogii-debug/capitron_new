import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Other10 extends StatefulWidget {
  @override
  _Other10State createState() => _Other10State();
}

class _Other10State extends State<Other10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Асуулт хариулт",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: bottomNavigation(4, context),
      body: body(context),
    );
  }

  Widget body(context) {
    return ListView(children: <Widget>[
      Column(
        children: [
          Image.asset("assets/faq/01.jpg"),
          Image.asset("assets/faq/02.jpg"),
        ],
      ),
    ]);
  }
}
