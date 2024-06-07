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
        toolbarHeight: 204,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
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
            // radius: 50,
            maxRadius: 50, // Uncomment this line
            minRadius: 40,
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/fc/73/86/fc738661ef2b421e299df7f60b16bf6e.jpg'),
            child: Icon(Icons.person),
          ),
        ),
        backgroundColor: Color(0xFF00A6BC),
      ),
      body: Center(),
    );
  }
}
