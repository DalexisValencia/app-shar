import 'package:flutter/material.dart';

class Fallbacks extends StatelessWidget {
  final String description;
  const Fallbacks({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 50,
      ),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w200,
          color: Colors.grey,
        ),
      ),
    );
  }
}
