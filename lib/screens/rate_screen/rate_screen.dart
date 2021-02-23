import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/constants.dart';
import 'package:capitron_new/screens/rate_screen/value_counter.dart';
import 'package:flutter/material.dart';

class RateScreen extends StatefulWidget {
  @override
  _RateScreenState createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  bool belenCheck = true;
  bool belenBusCheck = false;
  // Some ints
  Color textBelenColor = Colors.black;
  Color textBelenBusColor = Colors.black38;

  Color bottomBelen = kPrimaryColor;
  Color bottomBelenBus = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Ханш",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFeff0f4),
      bottomNavigationBar: bottomNavigation(3, context),
      body: Column(
        children: [
          body(context),
          // rates(),
        ],
      ),
    );
  }

  Widget body(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          topBar(),
          if (belenCheck == true) ratesBelen(context),
          if (belenBusCheck == true) ratesBelenBus(context),
        ],
      ),
    );
  }

  Widget ratesBelenBus(BuildContext context) {
    singleCard(png, icontitle, number1, number2) {
      return Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey[400],
            ),
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ValueCounter(),
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: 18.0,
              right: 18.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        png,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        icontitle,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      number1,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      number2,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Expanded(
        flex: 3,
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 10,
            left: 10,
            bottom: 10,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(color: kPrimaryColor, width: 1),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 18.0,
                      right: 18.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ВАЛЮТ",
                          style: TextStyle(
                            fontSize: 10,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "АВАХ",
                          style: TextStyle(
                            fontSize: 10,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "ЗАРАХ",
                          style: TextStyle(
                            fontSize: 10,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: Container(
                  child: ListView(
                    children: [
                      singleCard(
                        "assets/icons/ic_flag_usd.png",
                        "USD",
                        "1,993.00",
                        "2,000.00",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_cny.png",
                        "7CNY",
                        "311.30",
                        "315.20",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_eur.png",
                        "EUR",
                        "2,199.00",
                        "2,263.00",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_jpy.png",
                        "JPY",
                        "16.41",
                        "2,263.00",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_rub.png",
                        "RUB",
                        "26.88",
                        "33.53",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_gbp.png",
                        "GBR",
                        "2,989.00",
                        "3,064.00",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_chf.png",
                        "CHF",
                        "3161.0",
                        "3241.47",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_krw.png",
                        "KRW",
                        "2.52",
                        "2.65",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_rub.png",
                        "AG",
                        "2422.13",
                        "0.0",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_gbp.png",
                        "AU",
                        "182138.55",
                        "0.0",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget ratesBelen(BuildContext context) {
    singleCard(png, icontitle, number1, number2) {
      return Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: Colors.grey[400],
            ),
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ValueCounter(),
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: 18.0,
              right: 18.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        png,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        icontitle,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      number1,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      number2,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Expanded(
        flex: 3,
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 10,
            left: 10,
            bottom: 10,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(color: kPrimaryColor, width: 1),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 18.0,
                      right: 18.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ВАЛЮТ",
                          style: TextStyle(
                            fontSize: 10,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "АВАХ",
                          style: TextStyle(
                            fontSize: 10,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "ЗАРАХ",
                          style: TextStyle(
                            fontSize: 10,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: Container(
                  child: ListView(
                    children: [
                      singleCard(
                        "assets/icons/ic_flag_usd.png",
                        "USD",
                        "1,993.00",
                        "2,000.00",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_cny.png",
                        "7CNY",
                        "311.30",
                        "315.20",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_eur.png",
                        "EUR",
                        "2,199.00",
                        "2,263.00",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_jpy.png",
                        "JPY",
                        "16.41",
                        "2,263.00",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_rub.png",
                        "RUB",
                        "26.88",
                        "33.53",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_gbp.png",
                        "GBR",
                        "2,989.00",
                        "3,064.00",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_chf.png",
                        "CHF",
                        "3161.0",
                        "3241.47",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_krw.png",
                        "KRW",
                        "2.52",
                        "2.65",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_rub.png",
                        "AG",
                        "2422.13",
                        "0.0",
                      ),
                      singleCard(
                        "assets/icons/ic_flag_gbp.png",
                        "AU",
                        "182138.55",
                        "0.0",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget topBar() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                belenBusCheck = false;
                belenCheck = true;
                textBelenColor = kPrimaryColor;
                textBelenBusColor = Colors.black38;
                bottomBelen = kPrimaryColor;
                bottomBelenBus = Colors.white;
              });
            },
            child: Container(
              height: 38.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: bottomBelen,
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Бэлэн",
                  style: TextStyle(color: textBelenColor),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                belenBusCheck = true;
                belenCheck = false;
                textBelenColor = Colors.black38;
                textBelenBusColor = kPrimaryColor;
                bottomBelen = Colors.transparent;
                bottomBelenBus = kPrimaryColor;
              });
            },
            child: Container(
              height: 38.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: bottomBelenBus,
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Бэлэн бус",
                  style: TextStyle(color: textBelenBusColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
