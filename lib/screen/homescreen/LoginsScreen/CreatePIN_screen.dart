import 'package:chat_app/data/color.dart';
import 'package:flutter/material.dart';

class CreatePIN_Screen extends StatefulWidget {
  const CreatePIN_Screen({super.key});

  @override
  State<CreatePIN_Screen> createState() => _CreatePIN_ScreenState();
}

class _CreatePIN_ScreenState extends State<CreatePIN_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUse.background,

      // Body
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Create your PIN Code',
              style: TextStyle(
                color: ColorUse.text,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'You can use this PIN Code to restore your account and keep your information.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: ColorUse.text,
              ),
              decoration: InputDecoration(
                labelText: 'Enter new PIN Code',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: ColorUse.text,
              ),
              decoration: InputDecoration(
                labelText: 'Re-enter new PIN Code',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                'PIN Code must be at least 6 digits',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ]),
            const SizedBox(height: 40),
              Center(
                child: TextButton(
                onPressed: () {},
                child: const Text(
                   'Confirm',
                   style: TextStyle(
                     color: Colors.blue,
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
