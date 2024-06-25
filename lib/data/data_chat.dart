import 'package:chat_app/data/APIdata.dart';
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
    return Scaffold(
      backgroundColor: ColorUse.background,

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),

            // Chat with new messages
            ...APIdata().Chatlist.map((item) {
              return InkWell(
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
                                  item["avatar"].toString(),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["name"].toString(),
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      color: ColorUse.text,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 7.0),
                                const Text(
                                  //item["message"].toString(),
                                  'How do you do ?',
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
                              //item["time"].tosString(),
                              '00:21',
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
              );
            }),

            // chat with Seen messages

            // Chat with sent messages
          ],
        ),
      ),
    );
  }
}
