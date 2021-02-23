import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Other5 extends StatefulWidget {
  @override
  _Other5State createState() => _Other5State();
}

class _Other5State extends State<Other5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Тухай",
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
    return Center(
      child: Column(
        children: [
          Image.asset("assets/icons/ic_logo.png"),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "КАПИТРОН\nБАНК",
              style: TextStyle(
                  fontSize: 26,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Хувилбар"),
                Text(
                  "1.3.4",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Үйлдлийн систем"),
                Text(
                  "iOS 13.7",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text("Капитрон Банк 2017"),
          )
        ],
      ),
    );
  }
}
