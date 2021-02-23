import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/constants.dart';
import 'package:capitron_new/screens/pay_screen/pay_1.dart';
import 'package:capitron_new/screens/pay_screen/pay_2.dart';
import 'package:capitron_new/screens/pay_screen/pay_3.dart';
import 'package:capitron_new/screens/pay_screen/pay_4.dart';
import 'package:capitron_new/screens/pay_screen/pay_5.dart';
import 'package:flutter/material.dart';

class PayScreen extends StatefulWidget {
  static String routeName = "/pay";
  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Төлбөр",
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              bod(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget bod(BuildContext context) {
    singleCard(png, text) {
      return Card(
        color: Colors.white,
        child: Stack(
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      child: Image.asset(
                        png,
                        color: kPrimaryColor,
                        height: 10,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      text,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 30,
              child: Container(
                height: 15,
                width: 15,
                child:
                    Image.asset("assets/icons/ic_tiny_right_arrow_primary.png"),
              ),
            ),
          ],
        ),
      );
    }

    singleCards(png1, icontitle) {
      return Card(
        color: Colors.white,
        child: Stack(
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      child: Image.asset(
                        png1,
                        color: kPrimaryColor,
                        height: 10,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      icontitle,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 30,
              child: Container(
                height: 15,
                width: 15,
                child:
                    Image.asset("assets/icons/ic_tiny_right_arrow_primary.png"),
              ),
            ),
          ],
        ),
      );
    }

    singleCardd(pngg, icontitlew) {
      return Card(
        color: Colors.white,
        child: Stack(
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 35,
                      width: 35,
                      child: Image.asset(
                        pngg,
                        color: kPrimaryColor,
                        height: 10,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      icontitlew,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 30,
              child: Container(
                height: 15,
                width: 15,
                child:
                    Image.asset("assets/icons/ic_tiny_right_arrow_primary.png"),
              ),
            ),
          ],
        ),
      );
    }

    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 12.0, top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Харилцах данс",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 150,
                    child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        // childAspectRatio: 20 / 14,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 2.8),
                        children: <Widget>[
                          GestureDetector(
                            child: singleCard(
                              "assets/icons/ic_g_card.png",
                              "Нэгж цэнэглэх",
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => Pay1(),
                                ),
                              );
                            },
                          ),
                          GestureDetector(
                            child: singleCard(
                              "assets/icons/ic_g_card.png",
                              "Карт худалдан\nавах",
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => Pay2(),
                                ),
                              );
                            },
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 12.0, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Билл төлбөр",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        height: 150,
                        child: GestureDetector(
                          child: GridView.count(
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              // childAspectRatio: 20 / 14,
                              childAspectRatio: MediaQuery.of(context)
                                      .size
                                      .width /
                                  (MediaQuery.of(context).size.height / 2.8),
                              children: <Widget>[
                                GestureDetector(
                                  child: singleCards(
                                    "assets/icons/ic_o_bill.png",
                                    "Билл төлбөр",
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                        builder: (context) => Pay3(),
                                      ),
                                    );
                                  },
                                ),
                                GestureDetector(
                                  child: singleCards(
                                      "assets/icons/ic_o_bill.png",
                                      "Билл лавлах"),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                        builder: (context) => Pay4(),
                                      ),
                                    );
                                  },
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 12.0, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Төрийн үйлчилгээ",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        height: 150,
                        child: GridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            // childAspectRatio: 20 / 14,
                            childAspectRatio:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).size.height / 2.8),
                            children: <Widget>[
                              GestureDetector(
                                child: singleCardd(
                                  "assets/icons/ic_s_state.png",
                                  "Гаалийн төлбөр",
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                      builder: (context) => Pay5(),
                                    ),
                                  );
                                },
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
