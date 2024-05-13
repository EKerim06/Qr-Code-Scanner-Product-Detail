import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String? message;
  const NormalText({super.key,required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(message ?? 'N/a');
  }
}
