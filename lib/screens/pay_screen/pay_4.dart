import 'dart:io';

import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/screens/pay_screen/pay_4_search1.dart';
import 'package:capitron_new/screens/pay_screen/pay_4_search2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

import '../../constants.dart';

class Pay4 extends StatefulWidget {
  @override
  _Pay4State createState() => _Pay4State();
}

class _Pay4State extends State<Pay4> {
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
            "Билл лавлах",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFeff0f4),
        bottomNavigationBar: bottomNavigation(2, context),
        body: body(context));
  }

  Widget body(BuildContext context) {
    return Center(
      child: FlatButton(
        color: kPrimaryColor,
        onPressed: () {
          register(context);
        },
        child: Text(
          "Шинээр билл бүртгэх",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  register(BuildContext context) {
    if (Data.device == 0)
      return showDialog(
        context: context,
        builder: (context) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: CupertinoActionSheet(
              title: Column(
                children: [
                  Text(
                    "Шинэ билл",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  Text(
                    "Та бүртгэх төрөл өө сонгоно уу.",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                ],
              ),
              actions: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                      child: CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) => Pay4Search1(),
                            ),
                          );
                        },
                        child: Text("Хаяг байршилаар хайх"),
                      ),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => Pay4Search2(),
                          ),
                        );
                      },
                      child: Text("Биллерээр хайх"),
                    ),
                  ],
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Буцах"),
              ),
            ),
          );
        },
      );
    if (Data.device == 1)
      return showBottomSheet(
        context: context,
        builder: (context) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Буцах"),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Хуулах"),
                ),
              ],
            ),
          );
        },
      );
  }
}
