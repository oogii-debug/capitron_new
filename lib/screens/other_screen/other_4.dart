import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Other4 extends StatefulWidget {
  @override
  _Other4State createState() => _Other4State();
}

class _Other4State extends State<Other4> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Байршил",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: body(context),
      bottomNavigationBar: bottomNavigation(4, context),
    );
  }

  Widget body(context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 50.0,
        color: Color(0xFFeff0f4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  "Одоо ажиллаж байгаа",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isSwitched == true) {
                        isSwitched = false;
                      } else {
                        isSwitched = true;
                      }
                    });
                  },
                  child: CustomSwitchButton(
                    backgroundColor: Colors.black38,
                    unCheckedColor: Colors.white,
                    animationDuration: Duration(milliseconds: 100),
                    checkedColor: Colors.white,
                    checked: isSwitched,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
