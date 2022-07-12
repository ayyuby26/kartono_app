import 'package:flutter/material.dart';

class PageRouteCustom {
  static void to(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }
}
