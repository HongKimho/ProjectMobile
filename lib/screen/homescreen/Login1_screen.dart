import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:chat_app/data/color.dart';
import 'package:flutter/material.dart';

class Login1Screen extends StatefulWidget {
  const Login1Screen({super.key});

  @override
  State<Login1Screen> createState() => Login1ScreenState();
}

class Login1ScreenState extends State<Login1Screen> {
  int? _selectedNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUse.background,

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Phone Number ✨',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Enter your phone number to get started.',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                SizedBox(
                  width: 65,
                  height: 60,
                  child: DropdownButton<int>(
                   style: const TextStyle (color: Colors.black),
                    
                    hint: const Text('+855', style: TextStyle(fontSize: 12, color: ColorUse.text),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    value: _selectedNumber,
                    onChanged: (int? newValue) {
                      setState(() {
                        _selectedNumber = newValue;
                      });
                    },
                    
                    items: <int>[1, 2, 855].map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Container(
                          color: Colors.black,
                          child: Text('+ $value', style: const TextStyle(color: ColorUse.text),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const Expanded(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Your Phone Number',
                      hintStyle: TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
