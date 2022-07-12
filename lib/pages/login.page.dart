import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kartono_app/helper/popup.dart';
import 'package:kartono_app/main.dart';

import '../helper/page_route.dart';
import 'dashboard.page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passController = TextEditingController();
  final box = GetStorage();
  int? _hitungLah;

  @override
  void initState() {
    setState(() {
      _hitungLah = box.read("hitung");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: usernameController,
          ), //Input Text
          TextFormField(
            controller: passController,
          ), //Input Text
          ElevatedButton(
              //Tombol
              onPressed: () {
                final isAda = box.read("accounts");
                if (isAda != null) {
                  final decode = jsonDecode(isAda);
                  if (usernameController.text == decode['username'] &&
                      passController.text == decode['pass']) {
                    PageRouteCustom.to(context, DashboardPage());
                  } else {
                    PopUpCustom.show(context, "Pass salah");
                  }
                }
              },
              child: Text("login")),
          ElevatedButton(
              onPressed: () {
                final baca = box.read("hitung");
                if (baca != null) {
                  final baca1 = baca + 1;
                  box.write("hitung", baca1);
                  PopUpCustom.show(context, "Berhasil Tambah");
                  setState(() {
                    _hitungLah = box.read("hitung");
                  });
                }
              },
              child: Text("Tambah angka")),
          Text("Jumlah angka = $_hitungLah"),
        ],
      ),
    );
  }
}
