import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String? message;
  const TitleText({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message ?? 'N/a',
      style: const TextStyle(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
