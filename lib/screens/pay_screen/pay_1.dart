import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/screens/pay_screen/pay_ready1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class Pay1 extends StatefulWidget {
  @override
  _Pay1State createState() => _Pay1State();
}

class _Pay1State extends State<Pay1> {
  String accountMoney = "56098989.77 MNT";
  String operatorChose = "Оператороо сонгоно уу!";
  String cardChose = "Цэнэглэх карт сонгоно уу!";

  final myTECphone = new TextEditingController();

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Нэгж цэнэглэх",
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
          reciever(context),
        ],
      ),
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
                          accountMoney = "8677774.78 MNT";
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

  void _chooseOperator() {
    slideDialog.showSlideDialog(
      barrierColor: Colors.black12,
      context: context,
      child: Expanded(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            height: 32.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Center(
              child: Text(
                "Оператор сонгоно уу",
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
                          operatorChose = "МОБИКОМ";
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
                            child: Text("МОБИКОМ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          operatorChose = " ЮНИТЕЛ";
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
                            child: Text("ЮНИТЕЛ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          operatorChose = "СКАЙТЕЛ";
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
                            child: Text("СКАЙТЕЛ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          operatorChose = "ЖИМОБАЙЛ";
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
                            child: Text("ЖИМОБАЙЛ"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: Color(0xFFeff0f4),
    );
  }

  void _letChooseCard() {
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
                  "Карт сонгоно уу",
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
                            cardChose = "500Н";
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
                              child: Column(
                                children: [
                                  Text("500н"),
                                  Text(
                                    "500 ₮",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardChose = "500Н";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 50.0,
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
                              child: Column(
                                children: [
                                  Text("500н"),
                                  Text(
                                    "500₮",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
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
                            child: Column(
                              children: [
                                Text("500н"),
                                Text(
                                  "500₮",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardChose = "3000Н";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 50.0,
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
                              child: Column(
                                children: [
                                  Text("3000н"),
                                  Text(
                                    "3000₮",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
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
                            child: Column(
                              children: [
                                Text("500н"),
                                Text(
                                  "500₮",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardChose = "2000Н";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 50.0,
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
                              child: Column(
                                children: [
                                  Text("500н"),
                                  Text(
                                    "500₮",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
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
                            child: Column(
                              children: [
                                Text("2000н"),
                                Text(
                                  "2000₮",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardChose = "3000Н";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 50.0,
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
                              child: Column(
                                children: [
                                  Text("3000н"),
                                  Text(
                                    "3000₮",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardChose = "5000Н";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 50.0,
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
                              child: Column(
                                children: [
                                  Text("5000н"),
                                  Text(
                                    "5000₮",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardChose = "2500Н";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 50.0,
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
                              child: Column(
                                children: [
                                  Text("2500н"),
                                  Text(
                                    "2500₮",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardChose = "500Н";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 50.0,
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
                              child: Column(
                                children: [
                                  Text("500н"),
                                  Text(
                                    "500₮",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardChose = "1000Н";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 50.0,
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
                              child: Column(
                                children: [
                                  Text("1000н"),
                                  Text(
                                    "1000₮",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
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
                            child: Column(
                              children: [
                                Text("500н"),
                                Text(
                                  "500₮",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
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
                            child: Column(
                              children: [
                                Text("500н"),
                                Text(
                                  "500₮",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50.0,
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
                            child: Column(
                              children: [
                                Text("500н"),
                                Text(
                                  "500₮",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
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

  Widget reciever(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
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
                  "Хүлээн авагч",
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
                              "Оператор",
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
                              operatorChose,
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
                  _chooseOperator();
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
                              cardChose,
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
                              cardChose,
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
                  _letChooseCard();
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
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "Утасны дугаар",
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
                              controller: myTECphone,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                              ],
                              decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                hintText: 'Утасны дугаараа оруулна уу',
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
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(
                          Icons.phone_android_outlined,
                          size: 20,
                        ),
                        onPressed: () {
                          _makePhoneCall("tel:+97689435053");
                        },
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
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => PayReady1(
                          accountName: "ОТГОО",
                          accountNumber: "5519056426",
                          phoneNumber: myTECphone.text,
                          chooseCard: "Скайтел",
                          chooseOperator: "Юнител",
                          appBarTitle: "Нэгж цэнэглэх",
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "НЭГЖ ЦЭНЭГЛЭХ",
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
    );
  }

  Widget transfer(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(top: 18, left: 15, right: 15),
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
          ],
        ),
      ),
    );
  }
}
