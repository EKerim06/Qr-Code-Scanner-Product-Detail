import 'package:flutter/material.dart';

class TitleWithDescription extends StatelessWidget {
  final String? title;
  final String? description;
  

  const TitleWithDescription({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title ?? 'N/a',
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xff47b2ff),
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.clip,
        ),
        Text(
          description ?? 'N/a',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.clip,
        )
      ],
    );
  }
}
