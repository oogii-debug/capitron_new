import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AccountStatus extends StatefulWidget {
  @override
  _AccountStatusState createState() => _AccountStatusState();
}

class _AccountStatusState extends State<AccountStatus> {
  int currentTab = 0;
  double position = 0;
  double position1 = 0;
  // Some color
  Color allColor = Colors.white;
  Color containerColor = kPrimaryLightColor;

  final myTECeveryMonth = new TextEditingController();
  bool zarlagaHuulga = false;
  bool orlogoHuulga = false;
  bool allHuulga = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFFeff0f4),
          child: body(context),
        ),
      ),
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: bottomNavigation(0, context),
    );
  }

  Widget body(BuildContext context) {
    return Column(
      children: [
        top(context),
        if (zarlagaHuulga == true) zarlagaBody(context),
        if (allHuulga == true) allHuulgaBody(context),
        if (orlogoHuulga == true) orlogoHuulgaBody(context),
      ],
    );
  }

  Widget top(BuildContext context) {
    return Expanded(
      child: Container(
        color: kPrimaryColor,
        child: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Container(
                      height: 25,
                      width: 25,
                      child: Row(
                        children: [
                          Image.asset(
                              "assets/icons/ic_tiny_left_arrow_white.png"),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 90),
                  child: Center(
                    child: Text(
                      "ХУУЛГА - 4945998585  MNT",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 12.0,
                  left: 12.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                    color: kPrimaryLightColor,
                  ),
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 200),
                        left: position,
                        right: position1,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          height: 38.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              8.0,
                            ),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  position = 0.0;

                                  position1 =
                                      MediaQuery.of(context).size.width * 0.614;

                                  zarlagaHuulga = true;
                                  allHuulga = false;
                                  orlogoHuulga = false;
                                });
                              },
                              child: Container(
                                height: 38.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    8.0,
                                  ),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    "Зарлага",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  zarlagaHuulga = false;
                                  allHuulga = true;
                                  orlogoHuulga = false;
                                  position =
                                      MediaQuery.of(context).size.width * 0.31;

                                  position1 =
                                      MediaQuery.of(context).size.width * 0.31;
                                });
                              },
                              child: Container(
                                height: 38.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    8.0,
                                  ),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    "Бүгд",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  position1 = 0.0;

                                  position =
                                      MediaQuery.of(context).size.width * 0.614;
                                  zarlagaHuulga = false;
                                  allHuulga = false;
                                  orlogoHuulga = true;
                                });
                              },
                              child: Container(
                                height: 38.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    8.0,
                                  ),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                  child: Text(
                                    "Орлого",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
                bottom: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Огноо",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    "2021/12/05-2021/01/05",
                    style: TextStyle(
                      color: Color(
                        0xFF297f38,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget allHuulgaBody(context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding:
            EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0, bottom: 12.0),
        child: Container(
          color: Colors.white,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    if (index == 0) SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          //TODO:detail
                          /*detailContainer(
                                "2021-01-09 00:00:00",
                                "3099021234",
                                "-1,000,000,00 МNT",
                                "Амжилттай",
                                "ГАНБОЛДЫН АНУ (ХААН БАНК БАЯРБИЛЭГ)"); */
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.all(0.0),
                                content: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.0,
                                    ),
                                  ),
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
                                            "Гүйлгээний мэдээлэл",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          bottom: 4.0,
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "Гүйлгээний огноо",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "2021.01.09 00:00:00",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Шилжүүлэгч",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "3099021234",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Хүлээн авагч",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Гүйлгээний утга",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "- 100,000,000 MNT",
                                                          style: TextStyle(
                                                            color: Colors.red,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Төлөв",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "Амжилттай",
                                                          style: TextStyle(
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Утга",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "ГАНБОЛД АНУ (ХААН БАНК БАЯРБИЛЭГ)",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: 46.0,
                                                  width: 46.0,
                                                  decoration: BoxDecoration(
                                                    color: kPrimaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      38.0,
                                                    ),
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(14.0),
                                                      child: Image.asset(
                                                        "assets/icons/icon_closer.png",
                                                        height: 30.0,
                                                        width: 30.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "2021-01-09 00:00:00",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "ГАНБОЛДЫН АНУ",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "1,000,000,000 МNT",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "(ХААН БАНК BAYARBILEG)",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget orlogoHuulgaBody(context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding:
            EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0, bottom: 12.0),
        child: Container(
          color: Colors.white,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    if (index == 0) SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          //TODO:detail
                          /*detailContainer(
                                "2021-01-09 00:00:00",
                                "3099021234",
                                "-1,000,000,00 МNT",
                                "Амжилттай",
                                "ГАНБОЛДЫН АНУ (ХААН БАНК БАЯРБИЛЭГ)"); */
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.all(0.0),
                                content: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.0,
                                    ),
                                  ),
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
                                            "Гүйлгээний мэдээлэл",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          bottom: 4.0,
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "Гүйлгээний огноо",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "2021.01.09 00:00:00",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Шилжүүлэгч",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "3099021234",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Хүлээн авагч",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Гүйлгээний утга",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "- 100,000,000 MNT",
                                                          style: TextStyle(
                                                            color: Colors.red,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Төлөв",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "Амжилттай",
                                                          style: TextStyle(
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Утга",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "ГАНБОЛД АНУ (ХААН БАНК БАЯРБИЛЭГ)",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: 46.0,
                                                  width: 46.0,
                                                  decoration: BoxDecoration(
                                                    color: kPrimaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      38.0,
                                                    ),
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(14.0),
                                                      child: Image.asset(
                                                        "assets/icons/icon_closer.png",
                                                        height: 30.0,
                                                        width: 30.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "2021-01-09 00:00:00",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "ГАНБОЛДЫН АНУ",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "1,000,000,000 МNT",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "(ХААН БАНК BAYARBILEG)",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget zarlagaBody(context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding:
            EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0, bottom: 12.0),
        child: Container(
          color: Colors.white,
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    if (index == 0) SizedBox(height: 8.0),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                      ),
                      child: InkWell(
                        onTap: () {
                          //TODO:detail
                          /*detailContainer(
                                "2021-01-09 00:00:00",
                                "3099021234",
                                "-1,000,000,00 МNT",
                                "Амжилттай",
                                "ГАНБОЛДЫН АНУ (ХААН БАНК БАЯРБИЛЭГ)"); */
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.all(0.0),
                                content: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.0,
                                    ),
                                  ),
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
                                            "Гүйлгээний мэдээлэл",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          bottom: 4.0,
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "Гүйлгээний огноо",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "2021.01.09 00:00:00",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Шилжүүлэгч",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "3099021234",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Хүлээн авагч",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Гүйлгээний утга",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "- 100,000,000 MNT",
                                                          style: TextStyle(
                                                            color: Colors.red,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Төлөв",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "Амжилттай",
                                                          style: TextStyle(
                                                            color: Colors.green,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 0.7,
                                            color: Colors.grey,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                          bottom: 4.0,
                                                        ),
                                                        child: Text(
                                                          "Утга",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black45,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 20.0,
                                                        ),
                                                        child: Text(
                                                          "ГАНБОЛД АНУ (ХААН БАНК БАЯРБИЛЭГ)",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 12.0,
                                              bottom: 12.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: 46.0,
                                                  width: 46.0,
                                                  decoration: BoxDecoration(
                                                    color: kPrimaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      38.0,
                                                    ),
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(14.0),
                                                      child: Image.asset(
                                                        "assets/icons/icon_closer.png",
                                                        height: 30.0,
                                                        width: 30.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.0,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "2021-01-09 00:00:00",
                                    style: TextStyle(
                                      color: Colors.black45,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "ГАНБОЛДЫН АНУ",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "1,000,000,000 МNT",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "(ХААН БАНК BAYARBILEG)",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
