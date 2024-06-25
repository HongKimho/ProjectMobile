import 'package:chat_app/data/color.dart';
import 'package:chat_app/screen/homescreen/Login_screen.dart';
import 'package:chat_app/screen/homescreen/LoginsScreen/VerifySMSOTP.dart';
import 'package:chat_app/screen/homescreen/LoginsScreen/VerifySMSOTP.dart';
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
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            Container(
              padding: const EdgeInsets.only(top: 3, right: 10, left: 10 ),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.white)),
              child: Row(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: Colors.black,
                    ),
                    child: DropdownButton<int>(
                      style: const TextStyle(color: Colors.black,),
                      hint: const Text(
                        '+855',
                        style: TextStyle(fontSize: 12, color: ColorUse.text),
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      iconSize: 18,
                      borderRadius: BorderRadius.circular(10),
                      value: _selectedNumber,
                      onChanged: (int? newValue) {
                        setState(() {
                          _selectedNumber = newValue;
                        });
                      },
                      items: <int>[1, 2, 855]
                          .map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Container(
                            color: ColorUse.background,
                            child: Text(
                              '+ $value',
                              style: const TextStyle(color: ColorUse.text),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                   Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10,),
                      padding: const EdgeInsets.only(left: 10,), // padding use for custom gap between 'Your phone number' & 'Country code'
                      decoration: const BoxDecoration(
                        border: BorderDirectional(
                          // top: BorderSide(width: 1, color: Colors.white),
                          // bottom: BorderSide(width: 1, color: Colors.white),
                          start: BorderSide(width: 3, color: Colors.grey),
                          // end: BorderSide(width: 1, color: Colors.white),
                        ),
                      ),
                      child: const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Your Phone Number',
                            hintStyle: TextStyle(color: Colors.white54),
                            // border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifySMSotp()),
                  );
                },
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
