import 'package:capitron_new/screens/home_screen/home_account1.dart';
import 'package:capitron_new/screens/home_screen/home_account2.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'home_repairt.dart';

class HomeAccount extends StatefulWidget {
  @override
  _HomeAccountState createState() => _HomeAccountState();
}

class _HomeAccountState extends State<HomeAccount> {
  // Some bools
  bool numberHide = false;
  bool visibleHide = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 60, left: 10, right: 10),
      child: Column(
        children: [
          Container(
            height: size.height * 0.05,
            //   width: size.width * 0.97,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (visibleHide == false)
                  IconButton(
                    icon: Row(
                      children: [
                        Icon(
                          Icons.visibility,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        if (numberHide == true) {
                          numberHide = false;
                          visibleHide = false;
                        } else {
                          numberHide = true;
                          visibleHide = true;
                        }
                      });
                    },
                  ),
                if (visibleHide == true)
                  IconButton(
                    icon: Row(
                      children: [
                        Icon(
                          Icons.visibility_off,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                    onPressed: () {
                      setState(() {
                        if (numberHide == true) {
                          numberHide = false;
                          visibleHide = false;
                        } else {
                          numberHide = true;
                          visibleHide = true;
                        }
                      });
                    },
                  ),
                Text(
                  "БҮХ ДАНС",
                  style: TextStyle(),
                ),
                IconButton(
                    icon: Container(
                      height: 20,
                      width: 20,
                      child: Row(
                        children: [
                          Image.asset("assets/icons/ic_other_settings.png"),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => HomeRepair(),
                        ),
                      );
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15, left: 12.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Харилцах данс",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => HomeAccount1(),
                      ),
                    );
                  },
                  child: Container(
                    height: size.height * 0.06,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 6),
                              child: Text(
                                "(3099016375) - АНУ ГАНБОЛД",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 6.0, left: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (numberHide == false)
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "1,000,000 MNT",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                if (numberHide == true)
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "... MNT",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Center(
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/icon_arrow_right_normal.png"),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 15, left: 12.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Хугацаатай хадгаламж",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => HomeAccount2(),
                      ),
                    );
                  },
                  child: Container(
                    height: size.height * 0.06,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 6),
                              child: Text(
                                "(3099016375) - АНУ ГАНБОЛД",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 6.0, left: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (numberHide == false)
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "1,000,000 MNT",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                if (numberHide == true)
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "... MNT",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Center(
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/icons/icon_arrow_right_normal.png"),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
