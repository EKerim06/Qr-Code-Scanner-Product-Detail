import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String message;
  const CustomButton({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 28, 42, 66),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: Text(
        message,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
