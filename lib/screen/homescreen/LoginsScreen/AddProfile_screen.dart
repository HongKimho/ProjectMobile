import 'dart:io';

import 'package:chat_app/data/color.dart';
import 'package:chat_app/screen/homescreen/LoginsScreen/SetNameProfile_screen.dart';
import 'package:chat_app/screen/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddProfileScreen(),
    );
  }
}

class AddProfileScreen extends StatefulWidget {
  @override
  _AddProfileScreenState createState() => _AddProfileScreenState();
}

class _AddProfileScreenState extends State<AddProfileScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _selectedImage;
  int? _selectedAvatarIndex;

  final List<String> _avatars = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.png',
    'assets/7.png',
    'assets/8.png',
    'assets/9.png',
    'assets/10.png',
    'assets/11.png',
    'assets/12.png',
  ];

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    setState(() {
      _selectedImage = pickedFile;
      _selectedAvatarIndex = null; // Clear selected avatar if image is picked
    });
  }

  void _selectAvatar(int index) {
    setState(() {
      _selectedAvatarIndex = index;
      _selectedImage = null; // Clear selected image if avatar is selected
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUse.background,

      // AppBar
      appBar: AppBar(
        backgroundColor: ColorUse.background,
        title: Center
        (child: const Text(
          'Select an Avatar',
          style: TextStyle(color: ColorUse.text),
          )
        ),

        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.check),
        //     onPressed: () {
        //       // Handle the selection action
        //       if (_selectedImage != null) {
        //         // Image selected from camera/gallery
        //         print('Selected Image Path: ${_selectedImage!.path}');
        //       } else if (_selectedAvatarIndex != null) {
        //         // Avatar selected from predefined list
        //         print('Selected Avatar Index: $_selectedAvatarIndex');
        //       } else {
        //         print('No selection made');
        //       }
        //     },
        //   ),
        // ],
        
      ),

      // Body
      body: Column(
        children: [
          if (_selectedImage != null)
            CircleAvatar(
              radius: 50,
              backgroundImage: FileImage(File(_selectedImage!.path)),
            )
          else if (_selectedAvatarIndex != null)
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(_avatars[_selectedAvatarIndex!]),
            )
          else
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),

          SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 57, 57, 57), 
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.camera_alt, color: ColorUse.text),
                        onPressed: () => _pickImage(ImageSource.camera),
                      ),
                      Text(
                        'Camera',
                        style: TextStyle(color: ColorUse.text,
                        fontSize: 12),
                      ),
                    ],
                  ),
                  
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 57, 57, 57),
                    borderRadius: BorderRadius.circular(10)
                    ),
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.photo, color: ColorUse.text),
                        onPressed: () => _pickImage(ImageSource.gallery),
                      ),
                      Text(
                        'Photo',
                        style: TextStyle(color: ColorUse.text,
                        fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 57, 57, 57),
                    ),
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.text_fields, color: ColorUse.text),
                        onPressed: () {},
                      ),
                      Text(
                        'Text',
                        style: TextStyle(color: ColorUse.text,
                        fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 370),
            child: Column(
              children: [
                Text('Select an avatar', 
                style: TextStyle(
                  color: ColorUse.text,
                  fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        
        SizedBox(height: 1),
        Expanded(
            child: Container(
              margin: EdgeInsets.all(30),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 60,
                  crossAxisSpacing: 40,
                ),
                
                itemCount: _avatars.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _selectAvatar(index),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(_avatars[index]),
                    ),
                  );
                },
              ),
            ),
          ),


            Container(
              padding: const EdgeInsets.only(bottom: 450),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SetnameprofileScreen()),
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
    );
  }
}
