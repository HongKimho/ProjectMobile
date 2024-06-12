import 'package:chat_app/utils/color.dart';
import 'package:flutter/material.dart';

class SendChatScreen extends StatefulWidget {
  const SendChatScreen({super.key});

  @override
  State<SendChatScreen> createState() => _SendChatScreenState();
}

class _SendChatScreenState extends State<SendChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUse.background,
      
      //App bar
      appBar: AppBar(
        leadingWidth: 35,
        foregroundColor: Colors.white,
        backgroundColor: ColorUse.card,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                  'https://static.vecteezy.com/system/resources/previews/024/183/502/original/male-avatar-portrait-of-a-young-man-with-a-beard-illustration-of-male-character-in-modern-color-style-vector.jpg',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover),
            ),
            const SizedBox(width: 10),
            const Column(
              children: [
                Text('Johnny',
                    style: TextStyle(
                        color: ColorUse.text,
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 3),
                Text('Active Now',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      
      
      //Body
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                
                
                // Profile show
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                          'https://static.vecteezy.com/system/resources/previews/024/183/502/original/male-avatar-portrait-of-a-young-man-with-a-beard-illustration-of-male-character-in-modern-color-style-vector.jpg',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Johnny',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorUse.text,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Start conversation with your friend.',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                
                // Replies Chat from Friend
                Padding(
                  padding: const EdgeInsets.only(right: 60, top: 20),
                  // padding: const EdgeInsets.only(right: 120),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                            'https://static.vecteezy.com/system/resources/previews/024/183/502/original/male-avatar-portrait-of-a-young-man-with-a-beard-illustration-of-male-character-in-modern-color-style-vector.jpg',
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              decoration: BoxDecoration(
                                  color: ColorUse.card,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Row( // Control text meassage
                                children: [
                                  Text('Hello :)',
                                    style: TextStyle(
                                        color: ColorUse.text,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(width: 5),
                                      Text(
                                      '00:21 AM',
                                      style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                ]
                              ),

                            ),
                            const SizedBox(height: 3),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              decoration: BoxDecoration(
                                  color: ColorUse.card,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Row(
                                children: [
                                  Text(
                                     'How do you do?',
                                    style: TextStyle(
                                        color: ColorUse.text,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(width: 5),
                                      Text(
                                      '00:21 AM',
                                      style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                ]
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                
                
                // Replies Chat from yourself
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            decoration: BoxDecoration(
                                color: ColorUse.card,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              children: [
                                Text(
                                  'Hi :)',
                                  style: TextStyle(
                                      color: ColorUse.text,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '00:22 AM',
                                  style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.done_all_outlined,
                                    size: 15, color: Colors.white60)
                              ],
                            ),
                          ),
                          
                          // RepliesBox
                          const SizedBox(height: 3),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            decoration: BoxDecoration(
                                color: ColorUse.card,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              children: [
                                Text(
                                  'I do something!',
                                  style: TextStyle(
                                      color: ColorUse.text,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '00:22 AM',
                                  style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.done_all_outlined,
                                    size: 15, color: Colors.white60)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      
      //Bottom tab
      bottomNavigationBar: Container(
        height: 55,
        color: ColorUse.card,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.photo_library_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.mic,
                size: 27,
              ),
              onPressed: () {},
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: ColorUse.background,
                      borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: const Expanded(
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(
                          color: ColorUse.text,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Message',
                        hintStyle: TextStyle(
                          color: Colors.white38,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        alignLabelWithHint: true,
                      ),
                    ),
                  )),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
