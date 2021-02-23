import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/components/login.dart';
import 'package:capitron_new/components/show_picture.dart';
import 'package:capitron_new/screens/home_screen/home_screen.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final myTECmobileNumber = new TextEditingController();
  final myTECpinCode = new TextEditingController();

  bool isSwitchedFinger = false;
  bool isSwitched = false;

  Color iconMobileNumber = Colors.white54;
  Color iconPin = Colors.white54;

  String phoneNumber = "";
  String pass = "";

  initState() {
    super.initState();
    checkIsSave();
  }

  void validLogin() {
    if (isSwitched == true) {
      savePhone();
      Navigator.pushReplacement(
        context,
        new MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        new MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    }
  }

  checkIsSave() async {
    final SharedPreferences hadgalsanFile =
        await SharedPreferences.getInstance();
    if (hadgalsanFile.getString('phone') != null) {
      setState(() {
        myTECmobileNumber.text =
            "${hadgalsanFile.getString('phone').substring(0, 3) + "*****"}";
        isSwitched = true;
      });
    }
  }

  savePhone() async {
    final SharedPreferences hadgalsanFile =
        await SharedPreferences.getInstance();
    if (myTECmobileNumber.text.isEmpty) {
    } else {
      hadgalsanFile.setString('phone', myTECmobileNumber.text.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: [
            backgroundContainer(context),
            SafeArea(
              child: bodyContainer(),
            ),
          ],
        ),
        bottomNavigationBar: login(0, context));
  }

  Widget backgroundContainer(BuildContext context) {
    return ShowPicture(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      imageUrl: "assets/images/background.png",
      boxFit: BoxFit.cover,
    );
  }

  Widget bodyContainer() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.only(top: 70),
              child: ShowPicture(
                height: 220.0,
                width: 220.0,
                imageUrl: "assets/images/login_header.png",
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(top: 28.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Container(
                      child: Focus(
                        onFocusChange: (hasFocus) {
                          if (hasFocus) {
                          } else {
                            if (myTECmobileNumber.text.isEmpty) {
                              setState(() {
                                iconMobileNumber = Colors.white54;
                              });
                            } else {
                              setState(() {
                                iconMobileNumber = kPrimaryColor;
                              });
                            }
                          }
                        },
                        child: TextField(
                          controller: myTECmobileNumber,
                          onChanged: (value) {
                            phoneNumber = value;
                          },
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              top: 12.0,
                              right: 8.0,
                              left: 8.0,
                            ),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                right: 8.0,
                                left: 8.0,
                              ),
                              child: Container(
                                width: 200.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        "мартсан?",
                                        style: TextStyle(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.phone, color: iconMobileNumber),
                                  ],
                                ),
                              ),
                            ),
                            hintText: "Утасны дугаар",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Container(
                        child: Focus(
                          onFocusChange: (hasFocus) {
                            if (hasFocus) {
                            } else {
                              if (myTECpinCode.text.isEmpty) {
                                setState(() {
                                  iconPin = Colors.white54;
                                });
                              } else {
                                setState(() {
                                  iconPin = kPrimaryColor;
                                });
                              }
                            }
                          },
                          child: TextField(
                            controller: myTECpinCode,
                            obscureText: true,
                            onChanged: (value) {
                              pass = value;
                            },
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'))
                            ],
                            style: TextStyle(color: Colors.white),
                            cursorColor: kPrimaryColor,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                top: 12.0,
                                right: 8.0,
                                left: 8.0,
                              ),
                              hintText: "Пин код",
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                  right: 8.0,
                                  left: 8.0,
                                ),
                                child: Container(
                                  width: 200.0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Text(
                                          "мартсан?",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.lock, color: iconPin),
                                    ],
                                  ),
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 9,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text(
                              "Намайг сана",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isSwitched == true) {
                                  isSwitched = false;
                                } else {
                                  isSwitched = true;
                                }
                              });
                            },
                            child: CustomSwitchButton(
                              backgroundColor: Colors.white12,
                              unCheckedColor: Colors.white,
                              animationDuration: Duration(milliseconds: 100),
                              checkedColor: Colors.white,
                              checked: isSwitched,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 9,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                "Цаашид хурууны  хээгээр нэвтрэх",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSwitchedFinger = !isSwitchedFinger;
                                });
                              },
                              child: CustomSwitchButton(
                                backgroundColor: Colors.white12,
                                unCheckedColor: Colors.white,
                                animationDuration: Duration(milliseconds: 100),
                                checkedColor: Colors.white,
                                checked: isSwitchedFinger,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: 50.0,
                      child: ClipRRect(
                        child: FlatButton(
                          onPressed: () {
                            validLogin();
                          },
                          child: Text(
                            "НЭВТРЭХ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1.0,
                            style: BorderStyle.solid,
                            color: Colors.white,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 4.0,
                            bottom: 4.0,
                          ),
                          child: Image.asset(
                            "assets/icons/ic_fingerprint.png",
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
