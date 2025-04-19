import 'package:flutter/material.dart';
import 'package:susu_etawa/pages/Dashboard.dart';
import 'package:susu_etawa/pages/LoginPage.dart';
import 'package:susu_etawa/pages/ProfilePage.dart';
import 'package:susu_etawa/pages/RegisterPage.dart';

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
        "ProfilePage": (context) => const ProfilePage(),
        "LoginPage": (context) => const LoginPage(),
        "RegisterPage": (context) => const RegisterPage(),
      },
    );
  }
}
