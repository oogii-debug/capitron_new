import 'package:flutter/material.dart';

class Account1Top extends StatefulWidget {
  @override
  _Account1TopState createState() => _Account1TopState();
}

class _Account1TopState extends State<Account1Top> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            child: Image.asset(
              'assets/images/banner_welcome_nn.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Данс",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(height: 20),
              Text(
                "ГАНБОЛДЫН АНУ / 3012121212",
                style: TextStyle(
                    color: Color(0xFFb8afee),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Text(
                " MNT 1,299,040,120",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        Positioned(
          left: 10,
          top: 30,
          child: IconButton(
            icon: Container(
              height: 25,
              width: 25,
              child: Image.asset("assets/icons/ic_tiny_left_arrow_white.png"),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
