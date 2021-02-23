import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

import '../../constants.dart';

class Other1Permission extends StatefulWidget {
  @override
  _Other1PermissionState createState() => _Other1PermissionState();
}

class _Other1PermissionState extends State<Other1Permission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Үйлчилгээний эрх сунгах",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFeff0f4),
      bottomNavigationBar: bottomNavigation(4, context),
      body: transferAndReciever(context),
    );
  }

  Widget transferAndReciever(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18, left: 15, right: 15),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2),
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
                          "Таны үйлчилгээний хугацаа",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 5),
                        child: Text(
                          "2021.08.08",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                    height: 120.0,
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
                                "Сунгах хугацаа",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6,
                                left: 20.0,
                              ),
                              child: Text(
                                "1 жил",
                                style: TextStyle(
                                    fontSize: 15, color: kPrimaryColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 20.0,
                                left: 20.0,
                              ),
                              child: Text(
                                "Үйлчилгээний шимтгэл",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                                left: 20.0,
                              ),
                              child: Text(
                                "3000 MNT",
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 30, right: 30),
                              child: Container(
                                height: 15,
                                width: 15,
                                child: Image.asset(
                                  "assets/icons/icon_arrow_down_normal.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    _alretDiaolg();
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                      height: 80.0,
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
                                  "Шимтгэл төлөх данс",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  left: 20.0,
                                ),
                                child: Text(
                                  "Харилцах данс (200121011)",
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
                                  "45454.0 MNT",
                                  style: TextStyle(
                                      fontSize: 18, color: kPrimaryColor),
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
                      _alertDialog();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    height: 50,
                    color: kPrimaryColor,
                    child: FlatButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Солих",
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
    );
  }

  void _alretDiaolg() {
    slideDialog.showSlideDialog(
      context: context,
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 32,
              width: double.infinity,
              decoration: BoxDecoration(color: kPrimaryColor),
              child: Center(
                child: Text(
                  "Сунгах хугацаа",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                child: MediaQuery.removePadding(
                  context: context,
                  child: ListView(
                    children: [
                      Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colors.grey[400])),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("1 жил"),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("2 жил"),
                          ),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.grey[400])),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 10, left: 10),
                            child: Align(
                              child: Text("3 жил"),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _alertDialog() {
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
                  "Данс сонгоно уу",
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
                      Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("(5455656566) -  UGHY JHJH"),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "ХУГАЦААТАЙ ХАДГАЛАМЖ",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 15),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text("99744 MNT"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60.0,
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
                            child: Text("Таны дуртай кино?"),
                          ),
                        ),
                      ),
                    ],
                  ),
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
}
