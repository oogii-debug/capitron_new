import 'dart:io';

import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/constants.dart';
import 'package:capitron_new/screens/currency_screen/transfer1.dart';
import 'package:capitron_new/screens/currency_screen/transfer3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'transfer2.dart';

class CurrencyScreen extends StatefulWidget {
  @override
  _CurrencyScreenState createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
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
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Гүйлгээ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          child: Icon(
            Icons.backpack,
            color: Colors.transparent,
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigation(1, context),
      backgroundColor: Color(0xFFeff0f4),
      body: Column(
        children: [
          body(context),
        ],
      ),
    );
  }

  Widget body(BuildContext context) {
    singleCard(png, icontitle) {
      return Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      png,
                      color: kPrimaryColor,
                      height: 10,
                      width: 10,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    icontitle,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 15,
                    width: 15,
                    child: Image.asset(
                      "assets/icons/ic_tiny_right_arrow_primary.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        children: [
          Center(
            child: Container(
              height: 450,
              child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  // childAspectRatio: 20 / 14,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 2.8),
                  children: <Widget>[
                    GestureDetector(
                      child: singleCard(
                        "assets/icons/ic_tx_own_acct.png",
                        "Өөрийн\nданс хооронд",
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => Transfer1(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: singleCard("assets/icons/ic_tx_bank_local.png",
                          "Дансны\nдугаараар"),
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => Transfer2(),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: singleCard("assets/icons/ic_tx_bank_phone.png",
                          "Гар утасны\nдугаараар"),
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => Transfer3(),
                          ),
                        );
                      },
                    ),
                    singleCard(
                      "assets/icons/ic_other_primary.png",
                      "Гүйлгээний\nзагвар",
                    ),
                    GestureDetector(
                      child: singleCard(
                        "assets/icons/ic_tx_white.png",
                        "Гүйлгээний ТАН\nкод авах",
                      ),
                      onTap: () {
                        createAlertDialog(context);
                      },
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  createAlertDialog(BuildContext context) {
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
}
