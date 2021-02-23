import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Other3 extends StatefulWidget {
  @override
  _Other3State createState() => _Other3State();
}

class _Other3State extends State<Other3> {
  Color textApartmentColor = Colors.black;
  Color textSalaryColor = Colors.black38;
  Color textSavingColor = Colors.black38;
  Color bottomApartment = kPrimaryColor;
  Color bottomSalary = Colors.white;
  Color bottomSaving = Colors.white;

  final myTECeveryMonth = new TextEditingController();
  bool apartmentTick = true;
  bool salaryTick = false;
  bool savingTick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Тооцоолуур",
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
    return Column(
      children: [
        topBar(),
        if (apartmentTick == true) apartmentBody(context),
        if (salaryTick == true) payBody(context),
        if (savingTick == true) savingBody(context),
      ],
    );
  }

  Widget apartmentBody(context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kPrimaryColor,
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Сарын бүрийн төлбөр",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: TextField(
                    controller: myTECeveryMonth,
                    decoration: InputDecoration(
                      hintText: "",
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: kPrimaryColor,
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
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Өрхийн орлого",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: TextField(
              //       controller: myTECeveryMonth,
              //       decoration: InputDecoration(
              //         hintText: "",
              //       ),
              //       keyboardType: TextInputType.number,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
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
                      "Орон сууцны үнэ:",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Урьдчилгаа",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Зээлийн хэмжээ",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Хүү (жил):",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Хугацаа (жил):",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget payBody(context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: kPrimaryColor,
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
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Сарын бүрийн төлбөр",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: TextField(
              //       controller: myTECeveryMonth,
              //       decoration: InputDecoration(
              //         hintText: "",
              //       ),
              //       keyboardType: TextInputType.number,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: kPrimaryColor,
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
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Цалингийн хэмжээ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: TextField(
              //       controller: myTECeveryMonth,
              //       decoration: InputDecoration(
              //         hintText: "",
              //       ),
              //       keyboardType: TextInputType.number,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
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
                      "Орон сууцны үнэ:",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Хүү(сар):",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Хугацаа (сар):",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Зээлийн хэмжээ:",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget savingBody(context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: kPrimaryColor,
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
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Хүү",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: TextField(
              //       controller: myTECeveryMonth,
              //       decoration: InputDecoration(
              //         hintText: "",
              //       ),
              //       keyboardType: TextInputType.number,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Container(
          height: 60.0,
          decoration: BoxDecoration(
            color: kPrimaryColor,
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
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Нийт мөнгөн дүн",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 10),
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: TextField(
              //       controller: myTECeveryMonth,
              //       decoration: InputDecoration(
              //         hintText: "",
              //       ),
              //       keyboardType: TextInputType.number,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
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
                      "Эхний орлого:",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Хүү(сар):",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Эхлэх огноо:",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("02/03/2021",
                        style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryColor,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Хугацаа (сар):",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
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
                      "Сар бүр нэмэх:",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Align(
                //     alignment: Alignment.centerRight,
                //     child: TextField(
                //       controller: myTECeveryMonth,
                //       decoration: InputDecoration(
                //         hintText: "",
                //       ),
                //       keyboardType: TextInputType.number,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Text(
            "Санамж: Сар бүрийн хэдний өдөр орлого хийж\nбайгаагаасаа хамаарч бодогдох хүүний хэмжээ\nөөрчлөгдөж болно.",
            style: TextStyle(fontSize: 15, color: kPrimaryColor),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget topBar() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                savingTick = false;
                salaryTick = false;
                apartmentTick = true;
                textApartmentColor = kPrimaryColor;
                textSalaryColor = Colors.black38;
                textSavingColor = Colors.black38;
                bottomApartment = kPrimaryColor;
                bottomSaving = Colors.white;
                bottomSalary = Colors.white;
              });
            },
            child: Container(
              height: 38.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: bottomApartment,
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "ОРОН СУУЦНЫ ЗЭЭЛ",
                  style: TextStyle(color: textApartmentColor, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                salaryTick = true;
                apartmentTick = false;
                savingTick = false;
                textApartmentColor = Colors.black38;
                textSalaryColor = kPrimaryColor;
                textSavingColor = Colors.black38;
                bottomSaving = Colors.transparent;
                bottomApartment = Colors.transparent;
                bottomSalary = kPrimaryColor;
              });
            },
            child: Container(
              height: 38.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: bottomSalary,
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "ЦАЛИНГИЙН ЗЭЭЛ",
                  style: TextStyle(color: textSalaryColor, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                savingTick = true;
                salaryTick = false;
                apartmentTick = false;
                textApartmentColor = Colors.black38;
                textSavingColor = kPrimaryColor;
                textSalaryColor = Colors.black38;
                bottomApartment = Colors.transparent;
                bottomSalary = Colors.transparent;
                bottomSaving = kPrimaryColor;
              });
            },
            child: Container(
              height: 38.0,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: bottomSaving,
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "ХАДГАЛАМЖ",
                  style: TextStyle(color: textSavingColor, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
