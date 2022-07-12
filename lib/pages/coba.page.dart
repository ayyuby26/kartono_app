import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CobaPage extends StatefulWidget {
  const CobaPage({Key? key}) : super(key: key);

  @override
  State<CobaPage> createState() => _CobaPageState();
}

class _CobaPageState extends State<CobaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Bebas'));
  }
}
