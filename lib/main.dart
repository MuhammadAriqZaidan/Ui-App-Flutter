import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ui_e_commerce/pages/CartPage.dart';
import 'package:ui_e_commerce/pages/ChatPage.dart';
import 'package:ui_e_commerce/pages/HomePage.dart';
import 'package:ui_e_commerce/pages/ItemPage.dart';
import 'package:ui_e_commerce/pages/LoginPage.dart';
import 'package:ui_e_commerce/pages/MessagesPage.dart';
import 'package:ui_e_commerce/pages/ProfilePage.dart';
import 'package:ui_e_commerce/pages/RegisterPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => const Homepage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => ItemPage(),
        "MessagesPage": (context) => const MessagesPage(),
        "ProfilePage": (context) => const ProfilePage(),
        "LoginPage": (context) => const LoginPage(),
        "RegisterPage": (context) => const RegisterPage(),
        "ChatPage": (context) => ChatPage(),
      },
    );
  }
}
