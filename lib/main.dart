import 'package:chat_app/screen/homescreen/Login1_screen.dart';
import 'package:chat_app/screen/homescreen/Login_screen.dart';
import 'package:chat_app/screen/homescreen/VerifySMSOTP.dart';
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
      home: Login1Screen(),
    );
  }
}
