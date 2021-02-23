import 'package:capitron_new/components/bottom_navigation.dart';
import 'package:capitron_new/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPayScreen extends StatefulWidget {
  // static String routeName = "/pay";
  @override
  _LoginPayScreenState createState() => _LoginPayScreenState();
}

class _LoginPayScreenState extends State<LoginPayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Төлбөр",
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [see(context)],
          ),
        ),
      ),
    );
  }

  see(BuildContext context) {
    if (Data.device == 0) {
      return showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              "Төлбөрийн үйлчилгээг ашиглахын\nтулд нэвтэрч орно уу.",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Хаах"),
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
              "Төлбөрийн үйлчилгээр ашиглахын\nтулд нэвтэрч орно уу.",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Хаах"),
              ),
            ],
          );
        },
      );
    }
  }
}
