import 'package:chat_app/screen/homescreen/send_chat_screen.dart';
import 'package:chat_app/utils/color.dart';
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
      backgroundColor: ColorUse.background,

      // App bar
      appBar: AppBar(
        toolbarHeight: 160,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(0))),
        title: Column(
          children: [
            const SizedBox(height: 10.0),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'https://th.bing.com/th/id/R.d69323893f1231165229b407d4733b95?rik=yUt3yQXimhapQA&pid=ImgRaw&r=0',
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // Profile Name
                        'Sean Chao',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        // Bio profile
                        'My account',
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              // Search Box control
              height: 40.0,
              margin: const EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                  color: ColorUse.card,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.search_rounded,
                    color: Colors.grey,
                    size: 24.0,
                  ),
                  const SizedBox(width: 8.0),
                  // Control text in boxSearch
                  Expanded(
                    child: TextField(
                        keyboardType: TextInputType.multiline, // Control text typing in FieldBox
                        style: const TextStyle(
                        color: ColorUse.text,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),

                      textAlignVertical: TextAlignVertical.center, // Control textTitle in the FieldBox
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                        alignLabelWithHint: true,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 10.0,
      ),

      // Body
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
                                  'How do you do?',
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

            // Chat with seen messages
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
                                Text(
                                  'How do you do?',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color.fromARGB(255, 150, 150, 150),
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.done_all_outlined,
                                      size: 12,
                                      color: Colors.white60,
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
                                Text(
                                  'How do you do?',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color.fromARGB(255, 150, 150, 150),
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.done_outlined,
                                      size: 12,
                                      color: Colors.white60,
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
              
              // Add new button
              Stack(
              children: [
                // Align widget to position the IconButton container at the bottom right
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(
                        20.0), // Optional: Add padding to move the button away from the edges
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: const Color.fromARGB(255, 42, 79, 228),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // buttonBar
      
    );
  }
}
