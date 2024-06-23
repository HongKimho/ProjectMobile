import 'package:chat_app/data/color.dart';
import 'package:chat_app/data/data_chat.dart';
import 'package:chat_app/screen/homescreen/AddContact_Screen.dart';
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
        leadingWidth: 40,
        //foregroundColor: Colors.white,
        backgroundColor: ColorUse.background,
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
        elevation: 10.0,
      ),

      // Body
      body: const DataChatScreen(),

      // Add new button
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          icon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 45,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddContactScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
