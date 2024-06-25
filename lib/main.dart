import 'package:chat_app/screen/homescreen/loginsScreen/CreatePIN_screen.dart';
import 'package:chat_app/screen/homescreen/LoginsScreen/Login1_screen.dart';
import 'package:chat_app/screen/homescreen/Login_screen.dart';
import 'package:chat_app/screen/homescreen/LoginsScreen/VerifySMSOTP.dart';
import 'package:chat_app/screen/homescreen/home_screen.dart';
import 'package:chat_app/screen/homescreen/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
