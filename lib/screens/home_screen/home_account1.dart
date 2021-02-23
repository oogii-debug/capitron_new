import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/screens/home_screen/account1_top.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'account_status.dart';

class HomeAccount1 extends StatefulWidget {
  @override
  _HomeAccount1State createState() => _HomeAccount1State();
}

class _HomeAccount1State extends State<HomeAccount1> {
  // Some bools
  bool huulgaCheck = true;
  bool suuliinGuilgeeCheck = false;
  // Some color
  Color textHuulgaColor = Colors.black;
  Color textSuuliinGuilgeeColor = Colors.black38;

  Color bottomHuulgaColor = kPrimaryColor;
  Color bottomSuuliinGuilgee = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation(0, context),
      backgroundColor: Color(0xFFeff0f4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          header(context),
          bottom(context),
        ],
      ),
    );
  }

  Widget bottom(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        child: Column(
          children: [
            topBar(),
            if (huulgaCheck == true) StatementContainer(),
            if (suuliinGuilgeeCheck == true) suuliinGuilgee(),
          ],
        ),
      ),
    );
  }

  Widget suuliinGuilgee() {
    return Expanded(
      flex: 1,
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

  Widget header(BuildContext context) {
    return Expanded(flex: 1, child: Account1Top());
  }

  Widget topBar() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                suuliinGuilgeeCheck = true;
                huulgaCheck = false;
                textHuulgaColor = Colors.black38;
                textSuuliinGuilgeeColor = Colors.black;
                bottomHuulgaColor = Colors.transparent;
                bottomSuuliinGuilgee = kPrimaryColor;
              });
            },
            child: Container(
              height: 38.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: bottomSuuliinGuilgee,
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Сүүлийн гүүлгээ",
                  style: TextStyle(color: textSuuliinGuilgeeColor),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                suuliinGuilgeeCheck = false;
                huulgaCheck = true;
                textHuulgaColor = Colors.black;
                textSuuliinGuilgeeColor = Colors.black38;
                bottomHuulgaColor = kPrimaryColor;
                bottomSuuliinGuilgee = Colors.transparent;
              });
            },
            child: Container(
              height: 38.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: bottomHuulgaColor,
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Хуулга",
                  style: TextStyle(color: textHuulgaColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class StatementContainer extends StatefulWidget {
  @override
  _StatementContainerState createState() => _StatementContainerState();
}

class _StatementContainerState extends State<StatementContainer> {
  String startAtYear = DateTime.now().year.toString();
  String endAtYear = DateTime.now().year.toString();
  String startAtMonth = DateTime.now().month.toString();
  String endAtMonth = DateTime.now().month.toString();
  String startAtDay = DateTime.now().day.toString();
  String endAtDay = DateTime.now().day.toString();

  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          beginAndEndDate(context),
          yesterdayAndToday(context),
          weekAndMonth(context),
          seeStatement(context),
        ],
      ),
    );
  }

  Widget beginAndEndDate(BuildContext contxet) {
    const Map<int, String> months = {
      1: "Нэгдүгээр сар",
      2: "Хоёрдугаар сар",
      3: "Гуравдугаар сар",
      4: "Дөрөвдүгээр сар",
      5: "Тавдугаар сар",
      6: "Зургадугаар сар",
      7: "Долдугаар сар",
      8: "Наймдугаар сар",
      9: "Есдүгээр сар",
      10: "Аравдугаар сар",
      11: "Арваннэгдүгээр сар",
      12: "Арванхоёрдугаар сар",
    };

    Size size = MediaQuery.of(context).size;

    DateTime initialDateStart;

    DateTime defineInitialDate() {
      DateTime now = DateTime.now();
      return now;
    }

    singleContainer(
      String text,
      String number,
      String text1,
      String number2,
      bool status,
    ) {
      return InkWell(
        onTap: () {
          initialDateStart = defineInitialDate();
          showDatePicker(
            context: context,
            initialDate: initialDateStart,
            firstDate: DateTime(2004, 1, 1),
            lastDate: DateTime(
              defineInitialDate().year,
              defineInitialDate().month,
              defineInitialDate().day,
            ),
            helpText: 'ОГНОО',
            cancelText: 'БОЛИХ',
            confirmText: 'СОНГОХ',
            locale: const Locale("mn", "MN"),
            builder: (BuildContext context, Widget child) {
              return Theme(
                data: ThemeData.light().copyWith(
                  colorScheme: ColorScheme.light(primary: kPrimaryColor),
                  //dialogBackgroundColor: Colors.white,//Background color
                ),
                child: child,
              );
            },
          ).then((date) => {
                setState(() {
                  initialDateStart = date;
                  if (initialDateStart != null) {
                    if (status == true) {
                      startAtDay = initialDateStart.day.toString();
                      startAtMonth = initialDateStart.month.toString();
                      startAtYear = initialDateStart.year.toString();
                    } else {
                      endAtDay = initialDateStart.day.toString();
                      endAtMonth = initialDateStart.month.toString();
                      endAtYear = initialDateStart.year.toString();
                    }
                  }
                }),
              });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  number,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  text1,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  number2,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(left: 22.0, right: 22.0),
      child: Container(
        height: size.height * 0.22,
        child: GestureDetector(
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            // childAspectRatio: 20 / 14,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 2.2),
            crossAxisSpacing: 24,
            children: <Widget>[
              singleContainer(
                "Эхлэх",
                startAtDay.toString(),
                "${months[int.parse(startAtMonth.toString())].toString()}",
                startAtYear,
                true,
              ),
              singleContainer(
                "Дуусах",
                endAtDay.toString(),
                "${months[int.parse(endAtMonth.toString())].toString()}",
                endAtYear.toString(),
                false,
              ),
            ],
          ),
          onTap: () {},
        ),
      ),
    );
  }

  Widget yesterdayAndToday(BuildContext contxet) {
    Size size = MediaQuery.of(context).size;

    singleContainer(String text, bool status) {
      return InkWell(
        onTap: () {
          if (status == true) {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => AccountStatus(),
              ),
            );
          } else {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => AccountStatus(),
              ),
            );
          }
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(left: 22.0, right: 22.0),
      child: Container(
        height: size.height * 0.07,
        child: GestureDetector(
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            // childAspectRatio: 20 / 14,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 7),
            crossAxisSpacing: 24,
            children: <Widget>[
              singleContainer("Өчигдөр", true),
              singleContainer("Өнөөдөр", false),
            ],
          ),
          onTap: () {},
        ),
      ),
    );
  }

  Widget weekAndMonth(BuildContext contxet) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: 12, left: 22, right: 22),
      child: Container(
        height: size.height * 0.07,
        child: GestureDetector(
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            // childAspectRatio: 20 / 14,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 7),
            crossAxisSpacing: 24,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => AccountStatus(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "7 хоног",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => AccountStatus(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "1 сар",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
      ),
    );
  }

  Widget seeStatement(BuildContext contxet) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 120, left: 25, right: 25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: kPrimaryColor,
        ),
        height: size.height * 0.05,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => AccountStatus(),
              ),
            );
          },
          child: Center(
            child: Text(
              "Хуулга харах",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
