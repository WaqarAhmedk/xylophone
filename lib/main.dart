import 'package:flutter/material.dart';

import 'package:xylophone/Xylphonebody.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone"),
          centerTitle: true,
        ),
        body: XuloPhonebody(),
      ),
    );
  }
}
