

import 'package:flutter/material.dart';
import 'package:Online_Book_Shop/navigation.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //FlutterStatusbarcolor.setStatusBarColor(Color.fromRGBO(0, 48, 52, 1));
    return MaterialApp(
      title: 'Online_Book_Shop',
      debugShowCheckedModeBanner: false,

      home: Navigation(),


    );
  }
}
