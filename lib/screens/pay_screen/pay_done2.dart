import 'package:capitron_new/screens/pay_screen/pay_screen.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class PayDone2 extends StatefulWidget {
  final String accountName;
  final String accountNumber;
  final String chooseOperator;
  final String chooseCard;
  final String phoneNumber;
  final String appBarTitle;

  const PayDone2({
    Key key,
    this.accountName,
    this.chooseOperator,
    this.chooseCard,
    this.accountNumber,
    this.phoneNumber,
    this.appBarTitle,
    String descriptionTransfer,
  }) : super(key: key);

  @override
  _PayDone2State createState() => _PayDone2State();
}

class _PayDone2State extends State<PayDone2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          widget.appBarTitle ?? "error",
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
          body(context),
          bottom(context),
        ],
      ),
    );
  }

  Widget body(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 18, right: 18),
          child: Column(
            children: [
              if (Data.done == true)
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Color(0xFFa4c439),
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "Гүйлгээ амжилттай. Гүйлгээний\nдугаар: 23343434",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFFa4c439)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              if (Data.done == false)
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.error_outline_rounded,
                          color: Colors.red,
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "Гүйлгээ амжилтгүй. Гүйлгээний\nдугаар: 23343434",
                          style: TextStyle(fontSize: 13, color: Colors.red),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white),
                  height: 34,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1, left: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                              "assets/icons/icon_tx_confirm_src.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Шилжүүлэгч",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w300,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white30),
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(top: 1, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Дансны дугаар ",
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(widget.accountNumber.toString() ?? "error",
                          style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white),
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(top: 1, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Дансны нэр",
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(widget.accountName ?? "error",
                          style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1, left: 20),
                        child: Row(
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/icons/icon_tx_confirm_src.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Картын мэдээлэл",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white30),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Картын төрөл",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(widget.chooseOperator ?? "error",
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Карт",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              widget.phoneNumber.toString() ?? "error",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Утга",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(widget.appBarTitle ?? "error",
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white30),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Байгууллагын РД",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      height: 30,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 1, left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Гүйлгээний дүн",
                              style:
                                  TextStyle(fontSize: 13, color: kPrimaryColor),
                            ),
                            Text(
                              widget.chooseCard.toString() ?? "error",
                              style:
                                  TextStyle(fontSize: 18, color: kPrimaryColor),
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
        ));
  }

  Widget bottom(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 40,
              color: Colors.grey[300],
              child: FlatButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   new MaterialPageRoute(
                  //     builder: (context) => DetailAccount(),
                  //   ),
                  // );
                },
                child: Text(
                  "ХУУЛГА",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 10),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            Container(
              height: 40,
              color: Colors.grey[300],
              child: FlatButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   new MaterialPageRoute(
                  //     builder: (context) => (),
                  //   ),
                  // );
                },
                child: Text(
                  "ЗАГВАР ХАДГАЛАХ",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 10),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            Container(
              height: 40,
              color: kPrimaryColor,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => PayScreen(),
                    ),
                  );
                },
                child: Text(
                  "ДУУСГАХ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
