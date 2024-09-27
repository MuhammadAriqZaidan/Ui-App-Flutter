import 'package:flutter/material.dart';

class Chatappbar extends StatelessWidget{
  const Chatappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEDECF2),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF3C7A3C),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Seller',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3C7A3C),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
