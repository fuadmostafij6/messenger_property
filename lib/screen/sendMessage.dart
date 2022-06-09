import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({Key? key}) : super(key: key);

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  TextEditingController sendMessageController = TextEditingController();
  Future sendMessage(String msg) async {
    final response = await post(
      Uri.parse('http://v2.rebusel.com/api/v1/conversations/message/send'),
      headers: {
        'Authorization': 'Bearer Gs2c1654770080dQu2284',
      },
      body: {'cid': '224', 'message': msg},
    );
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            color: Colors.grey.shade200,
            child: TextField(
              controller: sendMessageController,
              decoration: InputDecoration(
                  suffix: IconButton(
                      onPressed: () {
                        print(sendMessageController.text);
                        sendMessage(sendMessageController.text);
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Colors.deepPurple,
                      )),
                  contentPadding: const EdgeInsets.all(12),
                  hintText: ""),
            ),
          )
        ],
      ),
    );
  }
}
