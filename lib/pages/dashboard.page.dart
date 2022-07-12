import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kartono_app/helper/page_route.dart';
import 'package:kartono_app/pages/bebas.page.dart';
import 'package:kartono_app/pages/coba.page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  adsaad() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

// Save an integer value to 'counter' key.
    await prefs.setInt('counter', 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("data"),
          ElevatedButton(
              onPressed: (() {
                PageRouteCustom.to(context, BebasPage());
              }),
              child: Text("Pindah")),
          ElevatedButton(
              onPressed: (() {
                PageRouteCustom.to(context, CobaPage());
              }),
              child: Text("Bebass"))
        ],
      ),
    );
  }
}
