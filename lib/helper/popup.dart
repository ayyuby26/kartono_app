import 'package:flutter/material.dart';

class PopUpCustom {
  static show(BuildContext context, String text) {
    showDialog(
        context: context,
        builder: (context) { 
          return AlertDialog(
            content: Text(text),
          );
        });
  }
}
