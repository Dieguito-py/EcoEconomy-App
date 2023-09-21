import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
            title: Text(title,
              style: const TextStyle(
                fontFamily: 'Blacksans',
                fontSize: 25,
              ),
            ),
            centerTitle: true,
            backgroundColor: const Color(0xFF3A5A40),
          );
  }
}