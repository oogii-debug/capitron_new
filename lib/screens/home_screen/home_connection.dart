import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeConnection extends StatefulWidget {
  @override
  _HomeConnectionState createState() => _HomeConnectionState();
}

class _HomeConnectionState extends State<HomeConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Данс холбох",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFeff0f4),
      body: Column(
        children: [
          header(context),
          bottom(context),
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 10,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
              ),
              height: 65.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 15),
                    child: Text(
                      "Дансны нэр",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 20),
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: "Дансны нэр оруулна уу",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
                height: 65.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 15),
                      child: Text(
                        "Данс дугаар",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: 'Дансны дугаараа оруулна уу',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottom(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 1,
      child: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: size.height * 0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: kPrimaryColor),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ДАНС НЭЭХ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      "assets/icons/ic_tiny_right_arrow_normal.png",
                    ),
                  )
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ),
      ]),
    );
  }
}
