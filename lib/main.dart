// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:crud_flutter/pages/first_page.dart';
import 'package:crud_flutter/pages/second_page.dart';
import 'package:crud_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow)
    );
  }
}