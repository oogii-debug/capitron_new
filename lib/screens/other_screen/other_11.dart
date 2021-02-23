import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Other11 extends StatefulWidget {
  @override
  _Other11State createState() => _Other11State();
}

class _Other11State extends State<Other11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Гарын авлага",
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
    return ListView(
      children: <Widget>[
        Column(
          children: [
            Image.asset("assets/pages/01.jpg"),
            Image.asset("assets/pages/02.jpg"),
            Image.asset("assets/pages/03.jpg"),
            Image.asset("assets/pages/04.jpg"),
            Image.asset("assets/pages/05.jpg"),
            Image.asset("assets/pages/06.jpg"),
            Image.asset("assets/pages/07.jpg"),
            Image.asset("assets/pages/08.jpg"),
            Image.asset("assets/pages/09.jpg"),
            Image.asset("assets/pages/10.jpg"),
          ],
        ),
      ],
    );
  }
}
