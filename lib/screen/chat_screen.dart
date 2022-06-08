import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28.0, top: 10),
            child: CircleAvatar(
              radius: 26,
              child: CircleAvatar(
                radius: 29,
                backgroundColor: Colors.grey[200],
                backgroundImage: AssetImage("assets/images/logo.jpeg"),
              ),
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Property",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      drawer: Drawer(),
      body: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 18),
              child: Card(
                //    margin: EdgeInsets.all(5),

                elevation: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter your valid keyword";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search People",
                      contentPadding:
                          EdgeInsets.only(top: 13, left: 12, bottom: 12),
                      fillColor: Colors.grey[300],
                      filled: true,
                      focusColor: Colors.grey[300],
                      // focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22.0, left: 20, right: 30),
                child: Center(
                  child: Text(
                    "Recent",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
