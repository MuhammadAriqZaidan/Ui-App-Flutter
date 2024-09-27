import 'package:flutter/material.dart';
import 'package:ui_e_commerce/widgets/ChatAppBar.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Chatappbar(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                buildMessage('Hey, what are you up to?', true),
                buildMessage('Nm', false),
                buildMessage('Just lounging on your laptop', false),
                buildMessage('Mmm... why?', true),
                buildMessage('Warming it up', false),
                buildMessage('I don\'t think laptops need to be warmed up', true),
              ],
            ),
          ),
          buildInputField(),
        ],
      ),
    );
  }

  Widget buildMessage(String message, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        constraints: BoxConstraints(maxWidth: 250),
        decoration: BoxDecoration(
          color: isMe ? Color.fromARGB(255, 218, 221, 216) : Color.fromARGB(255, 168, 162, 162),
          borderRadius: BorderRadius.circular(10).subtract(
            BorderRadius.only(
              bottomLeft: isMe ? Radius.zero : Radius.circular(10),
              bottomRight: isMe ? Radius.circular(10) : Radius.zero,
            ),
          ),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget buildInputField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type a message...",
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Color(0xFF3C7A3C)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
