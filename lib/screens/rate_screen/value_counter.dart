import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/constants.dart';
import 'package:flutter/material.dart';

class ValueCounter extends StatefulWidget {
  @override
  _ValueCounterState createState() => _ValueCounterState();
}

class _ValueCounterState extends State<ValueCounter> {
  final myTEChansh = new TextEditingController();

  double usdAwah = 2846.0;
  double cnyAwah = 439.2;
  double jpyAwah = 27.01;
  double krwAwah = 2.52;
  double eurAwah = 3430.0;
  double rubAwah = 38.23;
  double gbrAwah = 3846.0;
  double chfAwah = 3150.0;
  double agAwah = 2422.13;
  double auAwah = 182138.55;

  String usdAwahTxt = "2846.0";
  String cnyAwahTxt = "439.2";
  String jpyAwahTxt = "27.01";
  String krAwahTxt = "2.52";
  String eurAwahTxt = "3430.0";
  String rubAwahTxt = "38.23";
  String gbrAwahTxt = "3846.0";
  String chfAwahTxt = "3150.0";
  String agAwahTxt = "2422.13";
  String auAwahTxt = "182137.55";

  double usdZarah = 2857.0;
  double cnyZarah = 442.7;
  double jpyZarah = 16.41;
  double krwZarah = 2.65;
  double eurZarah = 3506.0;
  double rubZarah = 40.23;
  double gbrZarah = 2989.00;
  double chfZarah = 3228.44;
  double agZarah = 0.0;
  double auZarah = 0.0;

  String usdZarahTxt = "2857.0";
  String cnyZarahTxt = "442.7";
  String jpyZarahTxt = "16.41";
  String krZarahTxt = "2.65";
  String eurZarahTxt = "3506.0";
  String rubZarahTxt = "40.23";
  String gbrZarahTxt = "2989.00";
  String chfZarahTXt = "3228.44";
  String agZarahTxt = "0.0";
  String auZarahTXt = "0.0";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Тооцоолуур",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: bottomNavigation(3, context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                    right: 18.0,
                  ),
                  child: Focus(
                    onFocusChange: (hasChange) {
                      if (hasChange) {
                      } else {
                        if (myTEChansh.text.isEmpty) {
                          setState(() {
                            usdAwah = 2846.0;
                            cnyAwah = 439.2;
                            jpyAwah = 27.01;
                            krwAwah = 2.52;
                            eurAwah = 3430.0;
                            rubAwah = 38.23;
                            gbrAwah = 3846.0;
                            chfAwah = 3150.0;
                            agAwah = 2422.13;
                            auAwah = 182138.55;
                            usdZarah = 2857.0;
                            cnyZarah = 442.7;
                            jpyZarah = 16.41;
                            krwZarah = 2.65;
                            eurZarah = 3506.0;
                            rubZarah = 40.23;
                            gbrZarah = 2989.00;
                            chfZarah = 3228.44;
                            agZarah = 0.0;
                            auZarah = 0.0;
                            usdZarahTxt = usdZarah.toString();
                            cnyZarahTxt = cnyZarah.toString();
                            jpyZarahTxt = jpyZarah.toString();
                            krZarahTxt = krwZarah.toString();
                            eurZarahTxt = eurZarah.toString();
                            rubZarahTxt = rubZarah.toString();
                            gbrZarahTxt = gbrZarah.toString();
                            chfZarahTXt = chfZarah.toString();
                            agZarahTxt = agZarah.toString();
                            auZarahTXt = auZarah.toString();
                            usdAwahTxt = usdAwah.toString();
                            cnyAwahTxt = cnyAwah.toString();
                            krAwahTxt = krwAwah.toString();
                            jpyAwahTxt = jpyAwah.toString();
                            eurAwahTxt = eurAwah.toString();
                            rubAwahTxt = rubAwah.toString();
                            gbrAwahTxt = gbrAwah.toString();
                            chfAwahTxt = chfAwah.toString();
                            agAwahTxt = agAwah.toString();
                            auAwahTxt = auAwah.toString();
                          });
                        }
                      }
                    },
                    child: TextField(
                      controller: myTEChansh,
                      onChanged: (hasChange) {
                        setState(() {
                          usdAwah *= int.parse(myTEChansh.text.toString());
                          cnyAwah *= int.parse(myTEChansh.text.toString());
                          krwAwah *= int.parse(myTEChansh.text.toString());
                          jpyAwah *= int.parse(myTEChansh.text.toString());
                          eurAwah *= int.parse(myTEChansh.text.toString());
                          rubAwah *= int.parse(myTEChansh.text.toString());
                          gbrAwah *= int.parse(myTEChansh.text.toString());
                          chfAwah *= int.parse(myTEChansh.text.toString());
                          agAwah *= int.parse(myTEChansh.text.toString());
                          auAwah *= int.parse(myTEChansh.text.toString());
                          usdAwahTxt = usdAwah.toString();
                          cnyAwahTxt = cnyAwah.toString();
                          krAwahTxt = krwAwah.toString();
                          jpyAwahTxt = jpyAwah.toString();
                          eurAwahTxt = eurAwah.toString();
                          rubAwahTxt = rubAwah.toString();
                          gbrAwahTxt = gbrAwah.toString();
                          chfAwahTxt = chfAwah.toString();
                          agAwahTxt = agAwah.toString();
                          auAwahTxt = auAwah.toString();

                          usdZarah *= int.parse(myTEChansh.text.toString());
                          cnyZarah *= int.parse(myTEChansh.text.toString());
                          jpyZarah *= int.parse(myTEChansh.text.toString());
                          krwZarah *= int.parse(myTEChansh.text.toString());
                          eurZarah *= int.parse(myTEChansh.text.toString());
                          rubZarah *= int.parse(myTEChansh.text.toString());
                          gbrZarah *= int.parse(myTEChansh.text.toString());
                          chfZarah *= int.parse(myTEChansh.text.toString());
                          agZarah *= int.parse(myTEChansh.text.toString());
                          auZarah *= int.parse(myTEChansh.text.toString());
                          usdZarahTxt = usdZarah.toString();
                          cnyZarahTxt = cnyZarah.toString();
                          jpyZarahTxt = jpyZarah.toString();
                          krZarahTxt = krwZarah.toString();
                          eurZarahTxt = eurZarah.toString();
                          rubZarahTxt = rubZarah.toString();
                          gbrZarahTxt = gbrZarah.toString();
                          chfZarahTXt = chfZarah.toString();
                          agZarahTxt = agZarah.toString();
                          auZarahTXt = auZarah.toString();
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "1.00",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ),
              ratesBelen(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget ratesBelen(BuildContext context) {
    singleCard(png, icontitle, number, number1) {
      return Container(
        height: 60.0,
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
          padding: EdgeInsets.only(
            left: 18.0,
            right: 18.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Image.asset(
                        png,
                        height: 20,
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          icontitle,
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    number1,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    number,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Expanded(
        flex: 9,
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
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      singleCard(
                        "assets/icons/ic_flag_usd.png",
                        "USD",
                        usdAwahTxt.toString(),
                        usdZarahTxt.toString(),
                      ),
                      singleCard(
                        "assets/icons/ic_flag_cny.png",
                        "7CNY",
                        cnyAwahTxt.toString(),
                        cnyZarahTxt.toString(),
                      ),
                      singleCard(
                        "assets/icons/ic_flag_jpy.png",
                        "JPY",
                        jpyAwahTxt.toString(),
                        jpyZarahTxt.toString(),
                      ),
                      singleCard(
                        "assets/icons/ic_flag_krw.png",
                        "KRW",
                        krAwahTxt.toString(),
                        krZarahTxt.toString(),
                      ),
                      singleCard(
                        "assets/icons/ic_flag_eur.png",
                        "EUR",
                        eurAwahTxt.toString(),
                        eurZarahTxt.toString(),
                      ),
                      singleCard(
                        "assets/icons/ic_flag_rub.png",
                        "RUB",
                        rubAwahTxt.toString(),
                        rubZarahTxt.toString(),
                      ),
                      singleCard(
                        "assets/icons/ic_flag_gbp.png",
                        "GBR",
                        gbrAwahTxt.toString(),
                        gbrZarahTxt.toString(),
                      ),
                      singleCard(
                        "assets/icons/ic_flag_chf.png",
                        "CHF",
                        chfAwahTxt.toString(),
                        chfZarahTXt.toString(),
                      ),
                      singleCard(
                        "assets/icons/ic_flag_rub.png",
                        "AG",
                        agAwahTxt.toString(),
                        agZarahTxt.toString(),
                      ),
                      singleCard(
                        "assets/icons/ic_flag_gbp.png",
                        "AU",
                        auAwahTxt.toString(),
                        auZarahTXt.toString(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
