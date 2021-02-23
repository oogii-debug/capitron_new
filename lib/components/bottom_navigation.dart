import 'package:capitron_new/screens/currency_screen/currency_screen.dart';
import 'package:capitron_new/screens/home_screen/home_screen.dart';
import 'package:capitron_new/screens/other_screen/other_screen.dart';
import 'package:capitron_new/screens/pay_screen/pay_screen.dart';
import 'package:capitron_new/screens/rate_screen/rate_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

Widget bottomNavigation(int currentTab, BuildContext context) {
  return Container(
    color: Colors.white,
    height: 90.0,
    width: double.infinity,
    child: Column(
      children: [
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.black.withOpacity(
            0.1,
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 8.0,
            left: 8.0,
          ),
          child: Column(
            children: [
              Container(
                height: 46.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 0),
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    animation = CurvedAnimation(
                                        parent: animation,
                                        curve: Curves.elasticInOut);
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return HomeScreen();
                                  }));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/ic_acct_primary.png",
                              width: 28,
                              height: 23,
                              color: currentTab == 0
                                  ? kPrimaryLightColor
                                  : Colors.black.withOpacity(.30),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Данс",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: currentTab == 0
                                    ? kPrimaryLightColor
                                    : Colors.black.withOpacity(.30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 0),
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    animation = CurvedAnimation(
                                        parent: animation,
                                        curve: Curves.elasticInOut);
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return CurrencyScreen();
                                  }));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/ic_tx_primary.png",
                              width: 28,
                              height: 23,
                              color: currentTab == 1
                                  ? kPrimaryLightColor
                                  : Colors.black.withOpacity(.30),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Гүйлгээ",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: currentTab == 1
                                    ? kPrimaryLightColor
                                    : Colors.black.withOpacity(.30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 0),
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    animation = CurvedAnimation(
                                        parent: animation,
                                        curve: Curves.elasticInOut);
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return PayScreen();
                                  }));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/ic_pay_primary.png",
                              width: 28,
                              height: 23,
                              color: currentTab == 2
                                  ? kPrimaryLightColor
                                  : Colors.black.withOpacity(.30),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Төлбөр",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: currentTab == 2
                                    ? kPrimaryLightColor
                                    : Colors.black.withOpacity(.30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 0),
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    animation = CurvedAnimation(
                                        parent: animation,
                                        curve: Curves.elasticInOut);
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return RateScreen();
                                  }));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/ic_rate_primary.png",
                              width: 28,
                              height: 23,
                              color: currentTab == 3
                                  ? kPrimaryLightColor
                                  : Colors.black.withOpacity(.30),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Ханш",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: currentTab == 3
                                    ? kPrimaryLightColor
                                    : Colors.black.withOpacity(.30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 0),
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    animation = CurvedAnimation(
                                        parent: animation,
                                        curve: Curves.elasticInOut);
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return OtherScreen();
                                  }));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icons/ic_other_primary.png",
                              width: 28,
                              height: 23,
                              color: currentTab == 4
                                  ? kPrimaryLightColor
                                  : Colors.black.withOpacity(.30),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Бусад",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: currentTab == 4
                                    ? kPrimaryLightColor
                                    : Colors.black.withOpacity(.30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
