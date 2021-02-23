import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/screens/currency_screen/transfer1.dart';
import 'package:capitron_new/screens/currency_screen/transfer_done.dart';
import 'package:capitron_new/screens/currency_screen/transfer_ready.dart';
import 'package:capitron_new/screens/currency_screen/transfer_ready2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class Transfer3 extends StatefulWidget {
  @override
  _Transfer3State createState() => _Transfer3State();
}

class _Transfer3State extends State<Transfer3> {
  String accountMoney = "896767688.89 MNT";

  String exchangeRate = "MNT";

  final myTECutga = new TextEditingController();
  final myTECdun = new TextEditingController();
  final myTECphone = new TextEditingController();

  Color guilgeeBtn = Colors.grey[300];
  Color guilgeebtn = Colors.black54;

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
      bottomNavigationBar: bottomNavigation(1, context),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Гар утасны дугаараар",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFeff0f4),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              transfer(context),
              reciever(context),
            ],
          ),
        ),
      ),
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
              child: InkWell(
                onTap: () {
                  setState(() {
                    accountMoney = "8677774.78 MNT";
                    Navigator.pop(context);
                  });
                },
                child: Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
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
                      );
                    },
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

  Widget reciever(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
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
                            child: Focus(
                              onFocusChange: (hasFocus) {
                                if (hasFocus) {
                                } else {
                                  if (myTECutga.text.isEmpty ||
                                      myTECdun.text.isEmpty ||
                                      myTECphone.text.isEmpty) {
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
                          )
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
              padding: const EdgeInsets.only(top: 10),
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
                                  if (myTECphone.text.isEmpty ||
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
                            if (myTECphone.text.isEmpty ||
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
                        builder: (context) => TransferReady2(
                          accountName: "ОТГОНЦЭЦЭГ",
                          phoneNumber: myTECphone.text,
                          amount: double.parse(myTECdun.text),
                          transferDescription: myTECutga.text,
                          appBarTitle: "Гар утасны дугаараар",
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
                  _hariltsahDans();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
