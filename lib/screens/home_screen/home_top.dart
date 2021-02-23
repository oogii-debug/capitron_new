import 'dart:io';

import 'package:capitron_new/screens/login_screen/login_screen.dart';
import 'package:capitron_new/screens/other_screen/other_2.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeTop extends StatefulWidget {
  @override
  _HomeTopState createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  initState() {
    checkDevice();
    super.initState();
  }

  checkDevice() async {
    if (Platform.isAndroid) {
      Data.device = 1;
    }
    if (Platform.isIOS) {
      Data.device = 0;
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
                      builder: (context) => LoginScreen(),
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
                      builder: (context) => LoginScreen(),
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

  Widget build(BuildContext context) {
    return Container(
      height: 215.0,
      child: Stack(
        children: [
          Container(
            height: 215.0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/banner_welcome_nn.png',
              fit: BoxFit.fill,
            ),
          ),
          SafeArea(
              child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Тавтай морилно уу",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 7),
                    Text(
                      "ГАНБОЛДЫН АНУ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.person_pin_circle_rounded,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => Other2(),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 8.0,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.logout,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      createAlertDialog(context);
                    },
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
