import 'package:flutter/material.dart';

class BlueTitleText extends StatelessWidget {
  final String? message;
  const BlueTitleText({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message ?? 'N/a',
      style: const TextStyle(
        fontSize: 18,
        color: Color(0xff47b2ff),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
