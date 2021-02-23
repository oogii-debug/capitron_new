import 'dart:io';

import 'package:capitron_new/components/bottom_navigation.dart';

import 'package:capitron_new/screens/currency_screen/currency_screen.dart';
import 'package:capitron_new/screens/pay_screen/pay_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'home_account.dart';
import 'home_top.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void checkDevice() async {
    if (Platform.isAndroid) {
      Data.device = 1;
    }
    if (Platform.isIOS) {
      Data.device = 0;
    }
  }

  @override
  void initState() {
    checkDevice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeff0f4),
      bottomNavigationBar: bottomNavigation(0, context),
      body: Stack(
        children: [
          Column(
            children: [
              header(context),
              body(context),
            ],
          ),
          topNavigation(),
        ],
      ),
    );
  }

  tanCode(BuildContext context) {
    if (Data.device == 0)
      return showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              "ТАН КОД: 98989",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    if (Data.device == 1)
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "ТАН КОД: 98989",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Буцах"),
              ),
            ],
          );
        },
      );
  }

  Widget header(BuildContext context) {
    return Container(
      child: HomeTop(),
    );
  }

  Widget body(BuildContext context) {
    return Expanded(
      flex: 3,
      child: HomeAccount(),
    );
  }

  Widget topNavigation() {
    return Padding(
      padding: EdgeInsets.only(
        top: 185.0,
        right: 40.0,
        left: 40.0,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    child: FlatButton(
                      color: Color(0xFF2c3e90),
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          "assets/icons/ic_tx_white.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => CurrencyScreen(),
                          ),
                        );
                      },
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Гүйлгээ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    //  width: 100,
                    child: FlatButton(
                      color: Color(0xFFd52528),
                      child: Container(
                        height: 30,
                        child: Image.asset(
                          "assets/icons/ic_bag_white.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => PayScreen(),
                          ),
                        );
                      },
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "ТӨЛБӨР",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    width: 100,
                    child: FlatButton(
                      color: Color(0xFFd52528),
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          "assets/icons/ic_qpay.png",
                        ),
                      ),
                      onPressed: () {},
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "QPAY",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    child: FlatButton(
                      color: Color(0xFF2c3e90),
                      child: Container(
                        height: 25,
                        child: Image.asset(
                          "assets/icons/ic_code.png",
                        ),
                      ),
                      onPressed: () {
                        tanCode(context);
                      },
                      shape: CircleBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "ТАН",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
