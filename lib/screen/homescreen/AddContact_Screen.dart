import 'package:chat_app/data/color.dart';
import 'package:flutter/material.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({super.key});

  @override
  State<AddContactScreen> createState() => AddContactScreenState();
}

class AddContactScreenState extends State<AddContactScreen> {
  final List<String> sections = [
    'K',
    'L',
    'S',
    'T',
  ];
  final Map<String, List<String>> contacts = {
    'K': ['Kimho'],
    'L': ['Lee'],
    'S': ['Sok', 'Sean'],
    'T': ['Tep'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: ColorUse.background,
      

      // appBar
      appBar: AppBar(
        foregroundColor: Colors.white,
        leadingWidth: 40,
        
        backgroundColor: ColorUse.background,
        title: const Row (
          children:[
           Text('New chat', style: TextStyle(
            color: ColorUse.text,
            fontSize: 16,
            fontWeight: FontWeight.w600,
           )),
        ] ),
        
        actions: [ // icon to select contect to add group
          IconButton(
            icon: const Icon(Icons.campaign),
            onPressed: () {},
          ),
        ],
      ),


      // Body
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.multiline,
              style: const TextStyle(
                color: ColorUse.text,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.white,),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.shade800,
              ),
            ),
          ),

          const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount:
                  sections.length + 2, // +2 for the 'New Group' and 'New Channel'
              itemBuilder: (context, index) {
                
                // New Group
                if (index == 0) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      child: Icon(Icons.group, color: Colors.white),
                    ),
                    title: const Row(children:[
                      Text('New Group', style: TextStyle(color: ColorUse.text)),
                    ]),
                    onTap: () {},
                  );

                // New Channel 
                } else if (index == 1) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Icon(Icons.campaign, color: Colors.white),
                    ),
                    title: const Text('New Channel', style: TextStyle(color: ColorUse.text)),
                    onTap: () {},
                  );

                // New Contact  
                } else if (index == 2){
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    title: const Text('New Contact', style: TextStyle(color: ColorUse.text)),
                    onTap: () {},
                  );


                } else {
                  int sectionIndex = index - 2;
                  String section = sections[sectionIndex];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Text(
                          section,
                          style: const TextStyle(
                              color: ColorUse.text, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),


                      ...contacts[section]!.map((contact) {
                        return ListTile(
                          textColor: ColorUse.text,
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://static.vecteezy.com/system/resources/previews/024/183/502/original/male-avatar-portrait-of-a-young-man-with-a-beard-illustration-of-male-character-in-modern-color-style-vector.jpg'),
                          ),
                          title: Text(contact),
                          onTap: () {},
                        );
                      }),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
