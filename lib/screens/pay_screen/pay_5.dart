import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

import '../../constants.dart';

class Pay5 extends StatefulWidget {
  @override
  _Pay5State createState() => _Pay5State();
}

class _Pay5State extends State<Pay5> {
  final myTECutga = new TextEditingController();
  String accountMoney = "7878787.98 MNT";
  String typeSearch = "Регистрийн дугаар";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Гаалийн төлбөр",
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
      body: Column(
        children: [
          transfer(context),
        ],
      ),
    );
  }

  Widget transfer(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(top: 18, left: 15, right: 15),
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                height: 34.0,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 8, left: 10),
                  child: Text(
                    "Шилжүүлэгч",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                    height: 55.0,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 8.0,
                                left: 20.0,
                              ),
                              child: Text(
                                "Харилцах данс / 3021015401",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 20.0,
                              ),
                              child: Text(
                                accountMoney,
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Container(
                            height: 15,
                            width: 15,
                            child: Image.asset(
                              "assets/icons/icon_arrow_down_normal.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    _account();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                      height: 34.0,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8, left: 10),
                        child: Text(
                          "Хайх төрөл",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                          ),
                          height: 60.0,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 10.0,
                                      left: 20.0,
                                    ),
                                    child: Text(
                                      "Хайх төрөл",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 6,
                                      left: 20.0,
                                    ),
                                    child: Text(
                                      typeSearch,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  child: Image.asset(
                                    "assets/icons/icon_arrow_down_normal.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          _showDialog();
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                        ),
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Text(
                                "РД",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1, left: 20),
                              child: TextField(
                                controller: myTECutga,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: 'Регистрийн дугаараа оруулна уу',
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        height: 50,
                        color: kPrimaryColor,
                        child: FlatButton(
                          onPressed: () {
                            search(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ХАЙЛТ ХИЙХ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                  "assets/icons/ic_tiny_right_arrow_normal.png",
                                ),
                              )
                            ],
                          ),
                          textColor: Colors.black54,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black26,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    slideDialog.showSlideDialog(
      barrierColor: Colors.black12,
      context: context,
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 32.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Center(
                child: Text(
                  "Картын төрөл сонгоно уу",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            typeSearch = "Регистрийн дугаараар";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Регистрийн дугаараар"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            typeSearch = "Нэхэмжлэхийн дугаараар";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Нэхэмжлэхийн дугаараар"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            typeSearch = "Баркодоор";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text("Баркодоор"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Expanded(
            //   flex: 12,
            //   child: Padding(
            //     padding: EdgeInsets.only(
            //       right: 12.0,
            //       left: 12.0,
            //     ),
            //     child: Container(
            //       height: 150,
            //       child: ListView.builder(
            //         itemCount: 1,
            //         itemBuilder: (BuildContext context, int index) {
            //           return InkWell(
            //             onTap: () {
            //               Navigator.pop(context);
            //             },
            //             child: Container(
            //               height: 200.0,
            //               width: double.infinity,
            //               child: Column(
            //                  mainAxisSize: MainAxisSize.min,
            //                 children: [
            //                   Align(
            //                     alignment: Alignment.topLeft,
            //                     child: Text("ХХБ"),
            //                   ),
            //                   Divider(),
            //                   Align(
            //                     alignment: Alignment.topLeft,
            //                     child: Text("ХХБ"),
            //                   ),
            //                   Divider(),
            //                   Align(
            //                     alignment: Alignment.topLeft,
            //                     child: Text("ХХБ"),
            //                   ),
            //                   Divider(),
            //                   Align(
            //                     alignment: Alignment.topLeft,
            //                     child: Text("ХХБ"),
            //                   ),
            //                   Divider(),
            //                   Align(
            //                     alignment: Alignment.topLeft,
            //                     child: Text("ХХБ"),
            //                   ),
            //                   Divider(),
            //                 ],
            //               ),
            //             ),
            //           );
            //         },
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      //  barrierColor: Colors.white.withOpacity(0.7),
      // pillColor: Colors.red,
      backgroundColor: Color(0xFFeff0f4),
    );
  }

  void _account() {
    slideDialog.showSlideDialog(
      barrierColor: Colors.black12,
      context: context,
      child: Container(
        child: Column(
          children: [
            Container(
              height: 32.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Center(
                child: Text(
                  "Дансаа сонгоно уу",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 12.0,
                left: 12.0,
              ),
              child: Container(
                height: 100,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          accountMoney = "10090909 MNT";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 50.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("(303404010) - ГАНБОЛДЫН АНУ"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ХАРИЛЦАХ ДАНС",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 10),
                                ),
                                Text(
                                  "1,000,000,000 MNT",
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 11),
                                ),
                              ],
                            ),
                            Divider(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      //  barrierColor: Colors.white.withOpacity(0.7),
      // pillColor: Colors.red,
      backgroundColor: Color(0xFFeff0f4),
    );
  }

  search(BuildContext context) {
    if (Data.device == 0) {
      return showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              "ГААЛИЙН ЕРӨНХИЙ ГАЗАР :\nАмжилтгүй. Нэхэмжлэхийн дугаар олдсонгүй.",
              textAlign: TextAlign.center,
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
    }
    if (Data.device == 1) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "ГААЛИЙН ЕРӨНХИЙ ГАЗАР :\nАмжилтгүй. Нэхэмжлэхийн дугаар олдсонгүй.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }
}
