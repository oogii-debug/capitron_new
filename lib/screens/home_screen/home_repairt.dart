import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'home_connection.dart';

class HomeRepair extends StatefulWidget {
  @override
  _HomeRepairState createState() => _HomeRepairState();
}

class _HomeRepairState extends State<HomeRepair> {
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Данс засварлах",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.add_circle_outline,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => HomeConnection(),
                  ),
                );
              })
        ],
      ),
      backgroundColor: Color(0xFFeff0f4),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3), color: Colors.white),
              height: size.height * 0.07,
              // width: size.width * 0.93,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 15),
                          child: Text(
                            "(3021015401) - АНУ ГАНБОЛД",
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 15),
                          child: Text(
                            "ХАРИЛЦАХ ДАНС",
                            style: TextStyle(
                                color: Colors.black87,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: IconButton(
                          icon: Container(
                            height: 20,
                            child: Image.asset(
                                "assets/icons/ic_tiny_left_right_arrow_primary.png"),
                          ),
                          onPressed: () {
                            dialog(context);
                          })),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white),
                height: size.height * 0.07,
                // width: size.width * 0.93,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 15),
                            child: Text(
                              "(3021015401) - АНУ ГАНБОЛД",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 15),
                            child: Text(
                              "ХУГАЦААТАЙ\nХАДГАЛАМЖ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: IconButton(
                          icon: Container(
                            height: 20,
                            child: Image.asset("assets/icons/ic_vert_dots.png"),
                          ),
                          onPressed: () {
                            dialog2(context);
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  account(BuildContext context) {
    if (Data.device == 0)
      return showDialog(
        context: context,
        builder: (context) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: CupertinoActionSheet(
              title: Text(
                "Таны гүйлгээний ТАН код: 98989",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Хуулах"),
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

  dialog(BuildContext context) {
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
                    "АНУ ГАНБОЛД",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Харилцах данс (3021015401)",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Шилжүүлгийн үндсэн данс болгох"),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Хүлээг авах үндсэн данс болгох"),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Дансны нэр солих"),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Хасах",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Болих"),
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

  dialog2(BuildContext context) {
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
                    "АНУ ГАНБОЛД",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "Хугацаатай хадгаламж (3021015401)",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              actions: [
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Шилжүүлгийн үндсэн данс болгох"),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Хүлээг авах үндсэн данс болгох"),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Дансны нэр солих"),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Хасах",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Болих"),
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
