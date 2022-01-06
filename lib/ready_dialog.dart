import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadyDialog {
  static Future<void> simpleShowDialog(BuildContext context,
      String title,
      String content,
      String textYes,
      String textNo,
      Color backgroundColor,
      Function actionYes,
      Function actionNo)
  {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title,style: const TextStyle(
            color: Colors.white,
            fontSize: 17,),),
          backgroundColor: backgroundColor,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(content,style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,),)
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(textYes),
              onPressed: () {
                actionYes();
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(textNo),
              onPressed: () {
                actionNo();
                Navigator.of(context).pop();
              },)
          ],
        );
      },
    );
  }
}