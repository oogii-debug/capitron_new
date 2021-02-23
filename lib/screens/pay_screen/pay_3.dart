import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/screens/pay_screen/pay_ready3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

import '../../constants.dart';

class Pay3 extends StatefulWidget {
  @override
  _Pay3State createState() => _Pay3State();
}

class _Pay3State extends State<Pay3> {
  String accountMoney = "7879798.89 MNT";
  String billTypeChose = "Биллерийн төрөл сонгоно уу.";
  String billChose = "Биллер сонгоно уу.";

  final myTECphone = new TextEditingController();

  bool dooshooBoloh = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Билл төлбөр",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFeff0f4),
      bottomNavigationBar: bottomNavigation(2, context),
      body: SafeArea(
        child: Column(
          children: [reciever(context)],
        ),
      ),
    );
  }

  Widget reciever(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Padding(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: 20,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8, left: 10),
                        child: Text(
                          "Шилжүүлэгч",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                          ),
                          height: 52.0,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 8.0,
                                      left: 20.0,
                                    ),
                                    child: Text(
                                      "Харилцах данс / 3021015401",
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 20.0,
                                    ),
                                    child: Text(
                                      accountMoney,
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  child: Image.asset(
                                    "assets/icons/icon_arrow_down_normal.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          _account();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, left: 10),
                    child: Text(
                      "Биллерийн мэдээлэл",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(top: 2),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                                left: 20.0,
                              ),
                              child: Text(
                                "Биллерийн төрөл",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6,
                                left: 20.0,
                              ),
                              child: Text(
                                billTypeChose,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Container(
                            height: 15,
                            width: 15,
                            child: Image.asset(
                              "assets/icons/icon_arrow_down_normal.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    _billerType();
                  },
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(top: 2),
                child: GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                                left: 20.0,
                              ),
                              child: Text(
                                "Биллер",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6,
                                left: 20.0,
                              ),
                              child: Text(
                                billChose,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Container(
                            height: 15,
                            width: 15,
                            child: Image.asset(
                              "assets/icons/icon_arrow_down_normal.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    _biller();
                  },
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Text(
                                "Утасны дугаар",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1, left: 20),
                              child: TextField(
                                controller: myTECphone,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                ],
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: 'Утасны дугаараа оруулна уу',
                                  hintStyle: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
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
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8, left: 10),
                    child: Text(
                      "Гүйлгээ",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8, left: 20),
                        child: Text(
                          "Дүн",
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
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: '0.00',
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
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
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(top: 2),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: Text(
                          "Утга",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1, left: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            hintText: 'Утгаа оруулна уу',
                            hintStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "НӨАТ төлөгч байгуулага",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        Switch(
                          value: dooshooBoloh,
                          onChanged: (value) {
                            setState(() {
                              dooshooBoloh = value;
                            });
                          },
                          activeTrackColor: kPrimaryLightColor,
                          activeColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (dooshooBoloh == true)
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            "Байгуулагын РД",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w300,
                                fontSize: 13),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1, left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: 'Байгуулагын РД оруулна уу!',
                              hintStyle: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  color: kPrimaryColor,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => PayReady3(
                            accountName: "ОТГОО",
                            accountNumber: "5519056426",
                            phoneNumber: myTECphone.text,
                            chooseCard: "Скайтел",
                            chooseOperator: "Юнител",
                            appBarTitle: "Билл төлбөр",
                          ),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ТӨЛӨХ",
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
                        ),
                      ],
                    ),
                    textColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.black26,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _biller() {
    slideDialog.showSlideDialog(
      barrierColor: Colors.black12,
      context: context,
      child: Expanded(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            height: 32.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Center(
              child: Text(
                "Биллер сонгоно уу.",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
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
                    InkWell(
                      onTap: () {
                        setState(() {
                          billChose = "МОБИКОМ";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("МОБИКОМ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billChose = " ЮНИТЕЛ";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("ЮНИТЕЛ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billChose = "СКАЙТЕЛ";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("СКАЙТЕЛ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billChose = "ЖИМОБАЙЛ";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("ЖИМОБАЙЛ"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: Color(0xFFeff0f4),
    );
  }

  void _billerType() {
    slideDialog.showSlideDialog(
      barrierColor: Colors.black12,
      context: context,
      child: Expanded(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            height: 32.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Center(
              child: Text(
                "Биллерийн төрөл сонгоно уу",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
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
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Харилцаа холбоо";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Харилцаа холбоо"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "КаТВ , Гурвалсан үйлчилгээ";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("КаТВ , Гурвалсан үйлчилгээ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Төрийн үйлчилгээ";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Төрийн үйлчилгээ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Интернет (ISP)";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Интернет (ISP)"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Цахилгаан, ус, дулаан түгээх сүлжээ";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Цахилгаан, ус, дулаан түгээх сүлжээ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Орон сууц";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Орон сууц"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "СӨХ";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("СӨХ"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Даатгал";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Даатгал"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Тасалбар захиалга";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Тасалбар захиалга"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Их сургууль";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Их сургууль"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Бусад төлбөр";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Бусад төлбөр"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          billTypeChose = "Замын торгуул";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Замын торгуул"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: Color(0xFFeff0f4),
    );
  }

  void _account() {
    slideDialog.showSlideDialog(
      barrierColor: Colors.black12,
      context: context,
      child: Container(
        child: Column(
          children: [
            Container(
              height: 32.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Center(
                child: Text(
                  "Дансаа сонгоно уу",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 12.0,
                left: 12.0,
                top: 10.0,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 60.0,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text("(303404010) - ГАНБОЛДЫН АНУ"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ХАРИЛЦАХ ДАНС",
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                                Text(
                                  "1,000,000,000 MNT",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      //  barrierColor: Colors.white.withOpacity(0.7),
      // pillColor: Colors.red,
      backgroundColor: Color(0xFFeff0f4),
    );
  }
}
