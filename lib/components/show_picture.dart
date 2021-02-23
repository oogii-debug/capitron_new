import 'package:flutter/material.dart';

class ShowPicture extends StatelessWidget {
  final double height;
  final double width;
  final String imageUrl;
  final BoxFit boxFit;

  const ShowPicture({
    Key key,
    this.height,
    this.width,
    this.imageUrl,
    this.boxFit,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? null,
      width: width ?? null,
      child: Image.asset(
        imageUrl ?? "assets/images/login_header.png",
        fit: boxFit ?? null,
      ),
    );
  }
}
