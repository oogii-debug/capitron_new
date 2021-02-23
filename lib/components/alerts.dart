import 'package:flutter/material.dart';

class DefaultAlert {
  static void showDialogConnection(
    context,
    String text,
    String buttonText,
    Function tap(),
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            text,
          ),
          content: Text(""),
          actions: [
            FlatButton(
              child: Text(buttonText),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
