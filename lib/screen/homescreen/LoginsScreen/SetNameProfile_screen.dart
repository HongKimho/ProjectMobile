import 'dart:io';

import 'package:chat_app/data/color.dart';
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
      home: SetnameprofileScreen(),
    );
  }
}

class SetnameprofileScreen extends StatefulWidget {
  @override
  _SetnameprofileScreenState createState() => _SetnameprofileScreenState();
}

class _SetnameprofileScreenState extends State<SetnameprofileScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _selectedImage;

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    setState(() {
      _selectedImage = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUse.background,
      // App bar
      appBar: AppBar(
        title: Center(
          child: Text('Set up your profile', style: TextStyle(color: ColorUse.text),)),
        backgroundColor: ColorUse.background,


        // actions: [
        //   TextButton(
        //     onPressed: () {
        //       // Handle the next action
        //       String firstName = _firstNameController.text;
        //       String lastName = _lastNameController.text;
        //       String imagePath = _selectedImage?.path ?? '';

        //       print('First Name: $firstName');
        //       print('Last Name: $lastName');
        //       print('Image Path: $imagePath');
        //     },
        //     child: Text('Next', style: TextStyle(color: Colors.white)),
        //   ),
        // ],
      ),

      // Body
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => _pickImage(ImageSource.gallery),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _selectedImage != null 
                ? FileImage(File(_selectedImage!.path)) 
                :AssetImage('assets/avatar1.png') as ImageProvider,
                child: _selectedImage == null
                ? Icon(Icons.camera_alt, size: 50) : null,
              ),
            ),

            SizedBox(height: 20),
            Container(
              child: TextField(
                style: TextStyle(color: ColorUse.text),
                controller: _firstNameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 10),
            TextField(
              style: TextStyle(color: ColorUse.text),
              controller: _lastNameController,
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
              ),
            ),

          const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: const Text(
                'Continue',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
