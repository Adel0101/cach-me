import 'package:flutter/material.dart';
import 'package:pos_system/common/constant.dart';
import 'package:pos_system/view/view_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POS',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: ViewManager(),
    );
  }
}
