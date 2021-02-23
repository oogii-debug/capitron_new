import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Other2 extends StatefulWidget {
  @override
  _Other2State createState() => _Other2State();
}

class _Other2State extends State<Other2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text(
            "Хэрэглэгчийн мэдээлэл",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          ),
          centerTitle: true),
      bottomNavigationBar: bottomNavigation(4, context),
      backgroundColor: Color(0xFFeff0f4),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(child: User()),
          ],
        ),
      ),
    );
  }
}

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  int selectedRadioTile;
  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  createAlertDialog(BuildContext context) {
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          // top: 20.0,
          right: 20.0,
          left: 20.0,
          bottom: 20.0,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    //   width: double.infinity,
                    color: Colors.white,
                    child: RadioListTile(
                      value: 1,
                      groupValue: selectedRadioTile,
                      title: Text(
                        "SMS-р хүлээн авах",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                      onChanged: (val) {
                        setSelectedRadioTile(val);
                        createAlertDialog(context);
                      },
                      activeColor: Colors.grey,
                      // secondary: OutlineButton(
                      //   child: Text("Radio List Tile"),
                      //   onPressed: () {
                      //     print("Say Hello");
                      //   },
                      // ),
                      selected: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: Container(
                      height: 50.0,
                      color: Colors.white,
                      child: RadioListTile(
                        value: 2,
                        groupValue: selectedRadioTile,
                        title: Text(
                          "Имэйлээр мэдэгдэл хүлээн авах",
                          style: TextStyle(fontSize: 14),
                        ),
                        onChanged: (val) {
                          setSelectedRadioTile(val);
                          createAlertDialog(context);
                        },
                        activeColor: Colors.grey,
                        selected: false,
                      ),
                    ),
                  ),
                ],
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
                      Container(
                        height: 54.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Бүртгэлийн дугаар"),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "8644778",
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Утасны дугаар"),
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "86015103",
                                    style: TextStyle(color: kPrimaryColor),
                                  )),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Нэвтрэх нэр"),
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "86015103",
                                    style: TextStyle(color: kPrimaryColor),
                                  )),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Байгуулага эсэх"),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Үгүй",
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Нэр"),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "АНУ",
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Овог"),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "ГАНБОЛД",
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Ургын овог"),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "БОРЖИГОН",
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Хүйс"),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "эм",
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Байгуулагын нэр"),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(""),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Имэйл хаяг"),
                                  Text(
                                    "засварлах",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text("OOGII_OTGOO53@yahoo.com"),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Сүүлд өөрчлөгдсөн огноо"),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "2020.10.28 12:35:20",
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Бүртгэгдсэн огноо"),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "2020.10.28 12:35:20",
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 54.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text("НӨАТ дугаар")),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "засварлах",
                                  style: TextStyle(color: Colors.red),
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
    );
  }
}
