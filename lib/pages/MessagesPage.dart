import 'package:flutter/material.dart';
import 'package:ui_e_commerce/widgets/ChatList.dart';
import 'package:ui_e_commerce/widgets/MessagesAppBar.dart';


class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2), // Panggil AppBar dari file lain
      body: Column(
        children:[
          const Messagesappbar(),
          ChatListView(), // Panggil ListView dari file lain
        ],
      ),
    );
  }
}
