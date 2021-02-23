import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/screens/home_screen/home_repairt.dart';
import 'package:capitron_new/screens/other_screen/other_1_permission.dart';
import 'package:capitron_new/screens/other_screen/other_1_pin.dart';
import 'package:capitron_new/screens/other_screen/other_1_secret.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Other1 extends StatefulWidget {
  @override
  _Other1State createState() => _Other1State();
}

class _Other1State extends State<Other1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Тохиргоо",
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
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => Other1Pin(),
                  ),
                );
              },
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Пин код солих",
                          style: TextStyle(color: kPrimaryColor, fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 15,
                          width: 15,
                          child: Image.asset(
                              "assets/icons/icon_arrow_right_normal.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Нууц асуулт, хариулт, санамж солих",
                          style: TextStyle(color: kPrimaryColor, fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 15,
                          width: 15,
                          child: Image.asset(
                              "assets/icons/icon_arrow_right_normal.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => Other1Secret(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Үйлчилгээний эрх сунгах",
                          style: TextStyle(color: kPrimaryColor, fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 15,
                          width: 15,
                          child: Image.asset(
                              "assets/icons/icon_arrow_right_normal.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => Other1Permission(),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Данс засварлах",
                          style: TextStyle(color: kPrimaryColor, fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 15,
                          width: 15,
                          child: Image.asset(
                              "assets/icons/icon_arrow_right_normal.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => HomeRepair(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
