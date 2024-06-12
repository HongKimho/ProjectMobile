import 'package:chat_app/screen/homescreen/send_chat_screen.dart';
import 'package:chat_app/data/color.dart';
import 'package:flutter/material.dart';

class DataChatScreen extends StatefulWidget {
  const DataChatScreen({super.key});

  @override
  State<DataChatScreen> createState() => _DataChatScreenState();
}

class _DataChatScreenState extends State<DataChatScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorUse.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),

            // Chat with new messages
            for (int i = 0; i < 3; i++)
              InkWell(
                onTap: () {
                  // Perform the action when the widget is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SendChatScreen()),
                  );
                },

                // Profile message chats
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWxeP0FYO40fLbYn1hS08ZASqlpf6K4boW4w&s',
                                  width: 55,
                                  height: 55,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Text of name & message chats
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Johnny',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: ColorUse.text,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 7.0),
                                Text(
                                  'How do  do?',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              '00:22 AM',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(height: 7.0),

                            // New message icon
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.0),
                                color: Colors.lightBlue,
                              ),
                              child: const Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: ColorUse.text,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // chat with Seen messages
            for (int i = 0; i < 5; i++)
              InkWell(
                onTap: () {
                  // Perform the action when the widget is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SendChatScreen()),
                  );
                },
                // profile Message chats
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6DV--0QFWZYJ0vYl2vInKkgz6X8LCDeldzUi8WM3MnKQ837ov9guuSEiNP2xpgRqMR4I&usqp=CAU',
                                  width: 55,
                                  height: 55,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Text of name & message chats
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jiyong',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: ColorUse.text,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 7.0),
                                Row(
                                  
                                  children: [
                                    Icon(
                                      Icons.done_all_outlined,
                                      size: 12,
                                      color: Colors.white60,
                                    ),
                                    SizedBox(width: 3,),
                                    Text(
                                      'How do you do?',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Color.fromARGB(255, 150, 150, 150),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '00:22 AM',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 7.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            // Chat with sent messages
            for (int i = 0; i < 2; i++)
              InkWell(
                onTap: () {
                  // Perform the action when the widget is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SendChatScreen()),
                  );
                },
                // Profile message chats
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image.network(
                                  'https://i0.wp.com/www.cssscript.com/wp-content/uploads/2020/12/Customizable-SVG-Avatar-Generator-In-JavaScript-Avataaars.js.png?fit=438%2C408&ssl=1',
                                  width: 55,
                                  height: 55,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Text of name & message chats
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SeaHunter',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: ColorUse.text,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 7.0),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.done_outlined,
                                      size: 12,
                                      color: Colors.white60,
                                    ),
                                    SizedBox(width: 3,),
                                    Text(
                                      'How do you do?',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Color.fromARGB(255, 150, 150, 150),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                // Row(
                                //   children: [
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '11:22 PM',
                              style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 7.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}