import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

class Pay4Search1 extends StatefulWidget {
  @override
  _Pay4Search1State createState() => _Pay4Search1State();
}

class _Pay4Search1State extends State<Pay4Search1> {
  String country = "Аймаг/Хот сонгоно уу.";
  String disctrict = "Сум/Дүүрэг сонгоно уу.";
  String khoroo = "Баг/Хороо сонгоно уу.";
  String khoroolol = "Хороолол";
  String apartment = "Байр/Гудамж сонгоно уу.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Хаяг байршилаар хайх",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: bottomNavigation(2, context),
      backgroundColor: Color(0xFFeff0f4),
      body: Column(children: [reciever(context)]),
    );
  }

  Widget reciever(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
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
                              "Аймаг/Хот",
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
                              country,
                              style: TextStyle(
                                fontSize: 15,
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
                  _country();
                },
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
                              "Сум/Дүүрэг",
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
                              disctrict,
                              style: TextStyle(
                                fontSize: 15,
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
                onTap: () {},
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
                              "Баг/Хороо",
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
                              khoroo,
                              style: TextStyle(
                                fontSize: 15,
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
                              "Хороолол",
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
                              khoroolol,
                              style: TextStyle(
                                fontSize: 15,
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
                              "Байр/Гудамж",
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
                              apartment,
                              style: TextStyle(
                                fontSize: 15,
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                color: kPrimaryColor,
                child: FlatButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   new MaterialPageRoute(
                    //     builder: (context) => BUyButtonDeatail(),
                    //   ),
                    // );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ХАЙХ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          "assets/icons/ic_tiny_right_arrow_normal.png",
                        ),
                      ),
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
    );
  }

  void _country() {
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
                  "Аймаг/Хот сонгоно уу.",
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
                            country = "ОЛОН УЛСЫН ЯРИАНЫ КАРТ";
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
                              child: Text("ОЛОН УЛСЫН ЯРИАНЫ КАРТ"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            disctrict = "ИНТЕРНЕТ КАРТ";
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
                              child: Text("ИНТЕРНЕТ КАРТ"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            khoroo = "ИНТЕРНЕТ УТАС БОЛОН СУУРИН";
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
                              child: Text("ИНТЕРНЕТ УТАС БОЛОН СУУРИН"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            khoroolol = "МОБАЙЛ ДИЛЛЕР";
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
                              child: Text("МОБАЙЛ ДИЛЛЕР"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            apartment = "Гэрэгэ";
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
                              child: Text("Гэрэгэ"),
                            ),
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
      backgroundColor: Color(0xFFeff0f4),
    );
  }
}
