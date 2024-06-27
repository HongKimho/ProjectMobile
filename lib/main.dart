import 'package:chat_app/data/color.dart';
import 'package:chat_app/screen/homescreen/loginsScreen/CreatePIN_screen.dart';
import 'package:chat_app/screen/homescreen/LoginsScreen/Login1_screen.dart';
import 'package:chat_app/screen/homescreen/Login_screen.dart';
import 'package:chat_app/screen/homescreen/LoginsScreen/VerifySMSOTP.dart';
import 'package:chat_app/screen/homescreen/home_screen.dart';
import 'package:chat_app/screen/homescreen/send_chat_screen.dart';
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
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  void _navigateToHomeScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Login1Screen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUse.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Images/Chatlogo.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 2),
            const Text(
              'KIMHOChat',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                  color: ColorUse.text),
            ),
            const SizedBox(height: 3),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: 450,
        child: const Column(
          children: [
            Text(
              'Create by: KimHo',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins",
                  color: ColorUse.subtext),
            ),
            SizedBox(height: 3),
            Text(
              'Version: 0.0.1',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins",
                  color: ColorUse.subtext),
            ),
          ],
        ),
      ),
    );
  }
}
