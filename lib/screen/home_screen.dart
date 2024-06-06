import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        // centerTitle: true,
        title: Column(
          children: [
            const Text(
              'Chat',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Active',
              style: TextStyle(color: Colors.white60, fontSize: 12),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(),
    );
  }
}
