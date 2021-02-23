import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/constants.dart';
import 'package:capitron_new/screens/other_screen/other_1.dart';
import 'package:capitron_new/screens/other_screen/other_10.dart';
import 'package:capitron_new/screens/other_screen/other_11.dart';
import 'package:capitron_new/screens/other_screen/other_2.dart';
import 'package:capitron_new/screens/other_screen/other_3.dart';
import 'package:capitron_new/screens/other_screen/other_4.dart';
import 'package:capitron_new/screens/other_screen/other_5.dart';
import 'package:capitron_new/screens/other_screen/other_6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherScreen extends StatefulWidget {
  static String routeName = "/other";
  @override
  _OtherScreenState createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Бусад",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFeff0f4),
      bottomNavigationBar: bottomNavigation(4, context),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    singleCard(png, icontitle) {
      return Container(
        height: 130.0,
        child: Card(
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
                        height: 20,
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
                top: 20,
                child: Container(
                  height: 15,
                  width: 15,
                  child: Image.asset(
                      "assets/icons/ic_tiny_right_arrow_primary.png"),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        child: ListView(children: <Widget>[
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: singleCard(
                    "assets/icons/ic_other_settings.png",
                    "Тохиргоо",
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => Other1(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: singleCard("assets/icons/ic_other_user_info.png",
                      "Хэрэглэгчийн\nмэдээлэл"),
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => Other2(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: singleCard(
                      "assets/icons/ic_other_calc.png", "Тооцоолуур"),
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => Other3(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: singleCard(
                      "assets/icons/ic_other_location.png", "Байршил"),
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => Other4(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: singleCard("assets/icons/ic_other_about.png", "Тухай"),
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => Other5(),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: singleCard(
                    "assets/icons/ic_other_news.png",
                    "Мэдээ",
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => Other6(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: singleCard(
                    "assets/icons/ic_other_callcenter.png",
                    "Лавлах\nтөв",
                  ),
                  onTap: () {
                    dialog(context);
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: singleCard(
                    "assets/icons/ic_other_email.png",
                    "Имэйл\nилгээх",
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: singleCard(
                    "assets/icons/ic_other_email.png",
                    "Бусдад санал\nболгох",
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => Other10(),
                      ),
                    );
                  },
                  child: singleCard(
                    "assets/icons/ic_other_faq.png",
                    "Асуулт хариулт",
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => Other11(),
                      ),
                    );
                  },
                  child: singleCard(
                      "assets/icons/ic_other_manual.png", "Гарын\nавлага"),
                ),
              ),
              Expanded(
                child: InkWell(
                  child: singleCard(
                      "assets/icons/ic_other_news.png", "Бүтээгдэхүүн"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: singleCard(
                      "assets/icons/ic_other_news.png", "Онлайн чат"),
                ),
              ),
              Expanded(
                child: InkWell(
                  child: singleCard(
                      "assets/icons/ic_other_manual.png", "Системээс гарах"),
                  onTap: () {
                    createAlertDialog(context);
                  },
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  user(BuildContext context) {
    if (Data.device == 0) {
      return showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              "Бүртгэл амжилттай өөрчлөгдлөө",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
    if (Data.device == 1) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Бүртгэл амжилттай өөрчлөгдлөө",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
    if (Data.device == 1) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Системээс гарах уу?",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Буцах"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Other2(),
                    ),
                  );
                },
                child: Text("Тийм"),
              ),
            ],
          );
        },
      );
    }
  }

  dialog(BuildContext context) {
    if (Data.device == 0) {
      return showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Column(
              children: [
                Text(
                  "Капитрон Банк",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                Text(
                  "1800-2020",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
              ],
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Буцах"),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Other2(),
                    ),
                  );
                },
                child: Text("Тийм"),
              ),
            ],
          );
        },
      );
    }
    if (Data.device == 1) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Text(
                  "Капитрон Банк",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
                Text(
                  "1800-2020",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
              ],
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Буцах"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Other2(),
                    ),
                  );
                },
                child: Text("Тийм"),
              ),
            ],
          );
        },
      );
    }
  }

  createAlertDialog(BuildContext context) {
    if (Data.device == 0) {
      return showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              "Системээс гарах уу?",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Буцах"),
              ),
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Other2(),
                    ),
                  );
                },
                child: Text("Тийм"),
              ),
            ],
          );
        },
      );
    }
    if (Data.device == 1) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Системээс гарах уу?",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Буцах"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Other2(),
                    ),
                  );
                },
                child: Text("Тийм"),
              ),
            ],
          );
        },
      );
    }
  }
}
