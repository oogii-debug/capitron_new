import 'dart:math';

import 'package:capitron_new/screens/pay_screen/pay_done2.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class PayReady2 extends StatefulWidget {
  final String accountName;
  final String accountNumber;
  final String chooseOperator;
  final String chooseCard;
  final String phoneNumber;
  final String descriptionTransfer;
  final String appBarTitle;

  const PayReady2({
    Key key,
    this.accountName,
    this.chooseOperator,
    this.chooseCard,
    this.accountNumber,
    this.phoneNumber,
    this.descriptionTransfer,
    this.appBarTitle,
  }) : super(key: key);

  @override
  _PayReady2State createState() => _PayReady2State();
}

class _PayReady2State extends State<PayReady2> {
  final myTECphone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          widget.appBarTitle,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFeff0f4),
      body: Column(
        children: [
          body(context),
          bottom(context),
        ],
      ),
    );
  }

  Widget body(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 18, right: 18),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/icons/ic_other_about.png")),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "Баталгаажуулах",
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white),
                  height: 34,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1, left: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                              "assets/icons/icon_tx_confirm_src.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Шилжүүлэгч",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white30),
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(top: 1, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Дансны дугаар ",
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(widget.accountNumber.toString() ?? "error",
                          style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white),
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(top: 1, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Дансны нэр",
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(widget.accountName ?? "error",
                          style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1, left: 20),
                        child: Row(
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/icons/icon_tx_confirm_src.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Картын мэдээлэл",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white30),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Картын төрөл",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(widget.chooseOperator ?? "error",
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Карт",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              widget.phoneNumber.toString() ?? "error",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Утга",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(widget.appBarTitle ?? "error",
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white30),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Байгууллагын РД",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Гүйлгээний дүн",
                              style:
                                  TextStyle(fontSize: 13, color: kPrimaryColor),
                            ),
                            Text(
                              widget.chooseCard.toString() ?? "error",
                              style:
                                  TextStyle(fontSize: 18, color: kPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget bottom(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                height: 40,
                color: kPrimaryColor,
                child: FlatButton(
                  onPressed: () {
                    final randomNumber = new Random();
                    if (randomNumber.nextInt(2) == 1) {
                      Data.done = true;
                    } else {
                      Data.done = false;
                    }

                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => PayDone2(
                          accountName: "ОТГОО",
                          accountNumber: "5519056426",
                          phoneNumber: myTECphone.text,
                          chooseCard: "Скайтел",
                          chooseOperator: "Юнител",
                          descriptionTransfer: "ps",
                          appBarTitle: "Карт худалдан авах",
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Гүйлгээ хийх",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
