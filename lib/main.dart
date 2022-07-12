import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kartono_app/helper/page_route.dart';
import 'package:kartono_app/pages/dashboard.page.dart';
import 'package:kartono_app/pages/login.page.dart';

void main() async {
  await GetStorage.init();

  final data = {
    "username": "kartono",
    "pass": "kartono",
  };

  const hitung = 0;
  final box = GetStorage();
  if (box.read("accounts") == null) {
    await box.write('accounts', jsonEncode(data));
  }

  if (box.read("hitung") == null) await box.write('hitung', hitung);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
