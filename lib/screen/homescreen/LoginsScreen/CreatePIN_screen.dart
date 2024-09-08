

import 'package:chat_app/data/color.dart';
import 'package:chat_app/screen/homescreen/LoginsScreen/AddProfile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreatePIN_Screen extends StatefulWidget {
  const CreatePIN_Screen({super.key});

  @override
  State<CreatePIN_Screen> createState() => _CreatePIN_ScreenState();
}

class _CreatePIN_ScreenState extends State<CreatePIN_Screen> {
  final TextEditingController pinController = TextEditingController();
  final TextEditingController rePinController = TextEditingController();

  @override
  void dispose() {
    pinController.dispose();
    rePinController.dispose();
    super.dispose();
  }

  void _autoNavigate() {
    if (pinController.text.length == 6 && rePinController.text.length == 6) {
      // Check if both fields have 6 digits and are the same
      if (pinController.text == rePinController.text) {
        // Navigate to the AddProfileScreen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AddProfileScreen(),
          ),
        );
      } else {
        // Show a message if the PIN codes don't match
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('PIN codes do not match!')),
        );
      }
    }
  }

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

            // First PIN Code Input Field
            Container(
              child: TextField(
                controller: pinController,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: ColorUse.text,
                ),
                maxLength: 6, // Set max length to 6
                decoration: const InputDecoration(
                  labelText: 'Enter new PIN Code',
                  border: OutlineInputBorder(),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly, // Allow input numbers only
                ],
                onChanged: (value) {
                  if (value.length == 6) {
                    _autoNavigate(); // Check if auto navigation is needed
                  }
                },
              ),
              
            ),
            const SizedBox(height: 10),

            // Re-enter PIN Code Input Field
            TextField(
              controller: rePinController,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                color: ColorUse.text,
              ),
              maxLength: 6, // Set max length to 6
              decoration: const InputDecoration(
                labelText: 'Re-enter new PIN Code',
                border: OutlineInputBorder(),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly // Allow input numbers only
              ],
              onChanged: (value) {
                if (value.length == 6) {
                  _autoNavigate(); // Check if auto navigation is needed
                }
              },
            ),
            const SizedBox(height: 1),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'PIN Code must be at least 6 digits',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}







// import 'package:chat_app/data/color.dart';
// import 'package:chat_app/screen/homescreen/LoginsScreen/AddProfile_screen.dart';
// import 'package:flutter/material.dart';

// class CreatePIN_Screen extends StatefulWidget {
//   const CreatePIN_Screen({super.key});

//   @override
//   State<CreatePIN_Screen> createState() => _CreatePIN_ScreenState();
// }

// class _CreatePIN_ScreenState extends State<CreatePIN_Screen> {
//   final TextEditingController pinController = TextEditingController();
//   final TextEditingController rePinController = TextEditingController();

//   @override
//   void dispose() {
//     pinController.dispose();
//     rePinController.dispose();
//     super.dispose();
//   }

//   void _autoNavigate() {
//     if (pinController.text.length == 6 && rePinController.text.length == 6) {
//       // Check if both fields have 6 digits and are the same
//       if (pinController.text == rePinController.text) {
//         // Navigate to the AddProfileScreen
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => AddProfileScreen(),
//           ),
//         );
//       } else {
//         // Show a message if the PIN codes don't match
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('PIN codes do not match!')),
//         );
//       }
//     }
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorUse.background,

//       // Body
//       body: Padding(
//         padding: EdgeInsets.all(40),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text(
//               'Create your PIN Code',
//               style: TextStyle(
//                 color: ColorUse.text,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               'You can use this PIN Code to restore your account and keep your information.',
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 14,
//                 fontWeight: FontWeight.normal,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20),
//             const TextField(
//               keyboardType: TextInputType.number,
//               style: TextStyle(
//                 color: ColorUse.text,
//               ),
//               decoration: InputDecoration(
//                 labelText: 'Enter new PIN Code',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
//             const TextField(
//               keyboardType: TextInputType.number,
//               style: TextStyle(
//                 color: ColorUse.text,
//               ),
//               decoration: InputDecoration(
//                 labelText: 'Re-enter new PIN Code',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10),
//             const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//               Text(
//                 'PIN Code must be at least 6 digits',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 12,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//             ]),
//             const SizedBox(height: 40),
//             Container(
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => AddProfileScreen()),
//                   );
//                 },
//                 child: const Text(
//                   'Continue',
//                   style: TextStyle(
//                     color: Colors.blue,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
