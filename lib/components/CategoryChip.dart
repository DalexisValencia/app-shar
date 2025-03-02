import 'package:flutter/material.dart';

class Categorychip extends StatelessWidget {
  final String name;
  const Categorychip({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          right: 5,
        ),
        child: Chip(
          label: Text(
            name,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black38,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 215, 215, 215),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color.fromARGB(255, 116, 116, 116),
            ),
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
      ),
    );
  }
}
