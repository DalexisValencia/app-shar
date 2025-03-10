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
              fontSize: 11,
              color: Colors.black38,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: const Color.fromRGBO(217, 217, 217, 0.7),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color.fromRGBO(217, 217, 217, 0.7),
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
