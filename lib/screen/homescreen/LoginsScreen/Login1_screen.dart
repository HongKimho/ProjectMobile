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
              padding: const EdgeInsets.only(top: 3, right: 10, left: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.white)),
              child: Row(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: Colors.black,
                    ),
                    child: DropdownButton<int>(
                      style: const TextStyle(
                        color: Colors.black,
                      ),
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
                      items: <int>[1, 1-242, 1-246, 1-268, 1-473, 1-758, 1-767, 1-784, 1-809, 1-829, 1-849, 1-868, 1-876,
                      20, 211, 212, 213, 216, 218, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 
                      234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 
                      254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269,
                      30, 31, 32, 33, 34, 36, 39, 40, 41, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
                      60, 61, 62, 63, 64, 65, 66, 670, 673, 674, 675, 676, 677, 678, 679, 7, 81, 82, 84, 86, 850, 855, 856, 880, 886,
                      90, 91, 92, 93, 94, 95, 960, 961, 962, 963, 964, 965, 966, 967, 968, 970, 971, 972, 973, 974, 975, 976, 977, 992, 993, 994, 995, 996, 998
                      ]
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
                      margin: const EdgeInsets.only(
                        left: 10,
                      ),
                      padding: const EdgeInsets.only(
                        left: 10,
                      ), // padding use for custom gap between 'Your phone number' & 'Country code'
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
                  "Continue",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
