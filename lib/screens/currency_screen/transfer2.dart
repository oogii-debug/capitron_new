import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

import '../../constants.dart';
import 'transfer_ready.dart';

class Transfer2 extends StatefulWidget {
  @override
  _Transfer2State createState() => _Transfer2State();
}

class _Transfer2State extends State<Transfer2> {
  final myTECutga = new TextEditingController();
  final myTECdun = new TextEditingController();
  final myTECdansniiDugaar = new TextEditingController();
  final myTECdansniiNer = new TextEditingController();

  Color guilgeeBtn = Colors.grey[300];
  Color guilgeebtn = Colors.black54;

  String bank = "Банкаа сонгоно уу!";
  String money = "900000.98 MNT";

  String exchangeRate = "MNT";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: bottomNavigation(1, context),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Дансны дугаараар",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFeff0f4),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: mainContainer(),
        ),
      ),
    );
  }

  Widget mainContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        transferAndReciever(context),
        currency(context),
      ],
    );
  }

  Widget transferAndReciever(BuildContext context) {
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
                              "Харилцах данс / 3045448978",
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
                              money,
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
                  _hariltsahDans();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget currency(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
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
                              "Банк",
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
                            //TODO:check
                            child: Text(
                              bank,
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
                  _bankSongonUu();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white),
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        "Дансны дугаар",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1, left: 20),
                      child: Focus(
                        onFocusChange: (hasFocus) {
                          if (hasFocus) {
                          } else {
                            if (myTECdansniiDugaar.text.isEmpty ||
                                myTECdansniiNer.text.isEmpty ||
                                myTECdun.text.isEmpty ||
                                myTECutga.text.isEmpty) {
                              guilgeeBtn = Colors.grey[300];
                              guilgeebtn = Colors.black54;
                            } else {
                              setState(() {
                                guilgeeBtn = kPrimaryColor;
                                guilgeebtn = Colors.white;
                              });
                            }
                          }
                        },
                        child: TextField(
                          controller: myTECdansniiDugaar,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: 'Дансны дугаараа оруулна уу',
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white),
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        "Дансны нэр",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1, left: 20),
                      child: Focus(
                        onFocusChange: (hasFocus) {
                          if (hasFocus) {
                            print("dasnni ner songogdloo");
                          } else {
                            if (myTECdansniiDugaar.text.isEmpty ||
                                myTECdansniiNer.text.isEmpty ||
                                myTECdun.text.isEmpty ||
                                myTECutga.text.isEmpty) {
                              guilgeeBtn = Colors.grey[300];
                              guilgeebtn = Colors.black54;
                            } else {
                              setState(() {
                                guilgeeBtn = kPrimaryColor;
                                guilgeebtn = Colors.white;
                              });
                            }
                          }
                        },
                        child: TextField(
                          controller: myTECdansniiNer,
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: 'Дансны нэрээ оруулна уу',
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                height: 34.0,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "Гүйлгээ",
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
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 20),
                      child: Text(
                        "Дүн",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Focus(
                              onFocusChange: (hasFocus) {
                                if (hasFocus) {
                                  print("dun songogdloo");
                                } else {
                                  if (myTECdansniiDugaar.text.isEmpty ||
                                      myTECdansniiNer.text.isEmpty ||
                                      myTECdun.text.isEmpty ||
                                      myTECutga.text.isEmpty) {
                                    guilgeeBtn = Colors.grey[300];
                                    guilgeebtn = Colors.black54;
                                  } else {
                                    setState(() {
                                      guilgeeBtn = kPrimaryColor;
                                      guilgeebtn = Colors.white;
                                    });
                                  }
                                }
                              },
                              child: TextField(
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'),
                                  ),
                                ],
                                controller: myTECdun,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: '0.00',
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Text(
                                  exchangeRate,
                                  style: TextStyle(fontSize: 17),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _valiutSongoh();
                                  },
                                  icon: Container(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset(
                                      "assets/icons/icon_arrow_down_normal.png",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // child: DropdownButton<String>(
                            //   items: <String>['MNT', 'USD'].map((String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   }).toList(),
                            //   onChanged: (_) {},
                            // ),
                          ),
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
                      child: Focus(
                        onFocusChange: (hasFocus) {
                          if (hasFocus) {
                            print("utga songogdloo");
                          } else {
                            if (myTECdansniiDugaar.text.isEmpty ||
                                myTECdansniiNer.text.isEmpty ||
                                myTECdun.text.isEmpty ||
                                myTECutga.text.isEmpty) {
                              setState(() {
                                guilgeeBtn = Colors.grey[300];
                                guilgeebtn = Colors.black54;
                              });
                            } else {
                              setState(() {
                                guilgeeBtn = kPrimaryColor;
                                guilgeebtn = Colors.white;
                              });
                            }
                          }
                        },
                        child: TextField(
                          controller: myTECutga,
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: 'Утгаа оруулна уу',
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                height: 50,
                color: guilgeeBtn,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => TransferReady(
                          accountName: "ОТГОО",
                          accountNumber: 3021015401,
                          amount: double.parse(myTECdun.text) ?? 5000,
                          transferName: "БАЯРБИЛЭГ",
                          transferBank: "КАПИТРОН",
                          transferNumber: 3021015421,
                          transferDescription: myTECutga.text ?? "error",
                          appBarTitle: "Дансны дугаараар",
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ГҮЙЛГЭЭ ХИЙХ",
                        style: TextStyle(
                          color: guilgeebtn,
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
    );
  }

  //TODO:check2
  void _bankSongonUu() {
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
                  "Банкаа сонгоно уу",
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
                            bank = "ХХБ";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("ХХБ"),
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
                          setState(() {
                            bank = "Капитрон банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Капитрон банк"),
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
                          setState(() {
                            bank = "Голомт банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Голомт банк"),
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
                          setState(() {
                            bank = "ХААН Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("ХААН Банк"),
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
                          setState(() {
                            bank = "Төрийн банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Төрийн Банк"),
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
                          setState(() {
                            bank = "ХАС Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("ХАС Банк"),
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
                          setState(() {
                            bank = "Ариг Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Ариг Банк"),
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
                          setState(() {
                            bank = "Тээвэр Хөгжлийн Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Тээвэр Хөгжлийн Банк"),
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
                          setState(() {
                            bank = "Кредит Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Кредит Банк"),
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
                          setState(() {
                            bank = "Чингис Хаан Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Чингис Хаан Банк"),
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
                          setState(() {
                            bank = "ҮХО Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("ҮХО Банк"),
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
                          setState(() {
                            bank = "Капитал БЭХА";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Капитал БЭХА"),
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
                          setState(() {
                            bank = "Төрийн Сан Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Төрийн Сан Банк"),
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
                          setState(() {
                            bank = "Богд Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Богд Банк"),
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
                          setState(() {
                            bank = "Мобифинанс ББСБ";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Мобифинанс ББСБ"),
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
                          setState(() {
                            bank = "Монгол Банк";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Монгол Банк"),
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
                          setState(() {
                            bank = "МҮЦКТ";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("МҮЦКТ"),
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
                          setState(() {
                            bank = "ҮЦТХТ";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("ҮЦТХТ"),
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
                          setState(() {
                            bank = "Хай пэй";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  child: Text("Хай пэй"),
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

  void _hariltsahDans() {
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
                          money = "8677774.78 MNT";
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

  void _valiutSongoh() {
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
                  "Валют сонгоно уу",
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
                            exchangeRate = "MNT";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_mnt.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("MNT"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "USD";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_usd.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("USD"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "EUR";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_eur.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("EUR"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "CNY";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_cny.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("CNY"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "RUB";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_rub.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("RUB"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "JPY";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_jpy.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("JPY"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "GBP";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_gbp.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("GBP"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "CHF";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_chf.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("CHF"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "KRW";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_krw.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("KRW"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "HKD";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_usd.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("HKD"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "AUD";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_usd.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("AUD"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "AUD";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_usd.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("CAD"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            exchangeRate = "SGD";
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/ic_flag_usd.png"),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("SGD"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                      "assets/icons/ic_flag_usd.png"),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 2),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(""),
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
          ],
        ),
      ),
      //  barrierColor: Colors.white.withOpacity(0.7),
      // pillColor: Colors.red,
      backgroundColor: Color(0xFFeff0f4),
    );
  }
}
