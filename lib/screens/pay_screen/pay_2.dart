import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/screens/pay_screen/pay_ready2.dart';
import 'package:flutter/material.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

import '../../constants.dart';

class Pay2 extends StatefulWidget {
  @override
  Pay2State createState() => Pay2State();
}

class Pay2State extends State<Pay2> {
  String accountMoney = "9887768.89 MNT";
  String cardTypeChose = "Картын төрөлөө сонгоно уу!";
  String cardChose = "Карт сонгоно уу!";

  final myTECphone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Карт худалдан авах",
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
              padding: EdgeInsets.only(),
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
                    padding: EdgeInsets.only(top: 2.0),
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
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
                              "Картын төрөл",
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
                              cardTypeChose,
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
                  _chooseTypeCard();
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
                              "Карт",
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
                  _choosecard();
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
                              decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                hintText: 'Утасны дугаар оруулна уу',
                                hintStyle: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
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
                              "Утга",
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
                              decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                hintText: 'Гүйлгээний утгаа оруулна уу!',
                                hintStyle: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          )
                        ],
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
                        builder: (context) => PayReady2(
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
                        "ХУДАЛДАН АВАХ",
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
                top: 10.0,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          accountMoney = "9878789.79 MNT";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 60.0,
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
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  "1,000,000,000 MNT",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                  ),
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

  void _chooseTypeCard() {
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
                  "Картын төрөл өө сонгоно уу",
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
                            cardTypeChose = "ОЛОН УЛСЫН ЯРИАНЫ КАРТ";
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
                            cardTypeChose = "ИНТЕРНЕТ КАРТ";
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
                            cardTypeChose = "ИНТЕРНЕТ УТАС БОЛОН СУУРИН";
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
                            cardTypeChose = "МОБАЙЛ ДИЛЛЕР";
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
                            cardTypeChose = "Гэрэгэ";
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardTypeChose = "DDISH TV";
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
                              child: Text("DDISH TV"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardTypeChose = "ДААТГАЛ";
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
                              child: Text("ДААТГАЛ"),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            cardTypeChose = "SkyGo";
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
                              child: Text("SkyGo"),
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

  void _choosecard() {
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
                          _chooseCardOnPress();
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("ОУ ЯРИА 001"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset(
                                        "assets/icons/icon_arrow_right_normal.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _chooseCardOnPress1();
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 15),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("ОУ ЯРИА VoIP"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset(
                                        "assets/icons/icon_arrow_right_normal.png"),
                                  ),
                                ),
                              ),
                            ],
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

  void _chooseCardOnPress1() {
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
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                              "assets/icons/ic_tiny_left_arrow_white.png"),
                        ),
                      )),
                )),
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
                            cardChose = "EASY 5000";
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
                                  Text("EASY 5000"),
                                  Text(
                                    "5000 ₮",
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

  void _chooseCardOnPress() {
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
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                              "assets/icons/ic_tiny_left_arrow_white.png"),
                        ),
                      )),
                )),
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
                            cardChose = "АНУ 2000";
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
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("АНУ 2000")),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "2000 ₮",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300),
                                    ),
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
                            cardChose = "СОЛОНГОС 3000";
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
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("СОЛОНГОС 3000")),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "3000 ₮",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300),
                                    ),
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
                            cardChose = "ОХУ 2500";
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
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("ОХУ 2500")),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "2500 ₮",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300),
                                    ),
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
                            cardChose = "БНХАУ 2500";
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
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("БНХАУ 2500")),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "2500 ₮",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300),
                                    ),
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
                            cardChose = "ЯПОН 3000";
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
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("ЯПОН 3000")),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "3000 ₮",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300),
                                    ),
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
                            cardChose = "БУСАД 3500";
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
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("БУСАД 3500")),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "3500 ₮",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
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
      //  barrierColor: Colors.white.withOpacity(0.7),
      // pillColor: Colors.red,
      backgroundColor: Color(0xFFeff0f4),
    );
  }
}
