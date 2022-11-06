import 'package:clone_ui_1/pages/home_page.dart';
import 'package:clone_ui_1/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Color(0xffFF4BA3),
        ),
      ),
      home: LoginPage(),
    );
  }
}
