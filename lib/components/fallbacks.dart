import 'package:flutter/material.dart';
import 'package:shar/constants/contants.dart';

class Fallbacks extends StatelessWidget {
  final String description;
  const Fallbacks({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 50,
      ),
      child: Center(
        child: Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: greyColor,
          ),
        ),
      ),
    );
  }
}
