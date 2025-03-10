import 'package:flutter/material.dart';
import 'package:shar/components/CategoryChip.dart';

class Categorychipwrapper extends StatelessWidget {
  const Categorychipwrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: const Row(
          children: [
            Categorychip(name: "Category"),
            Categorychip(name: "Category"),
            Categorychip(name: "Category"),
            Categorychip(name: "Category"),
            Categorychip(name: "Category"),
            Categorychip(name: "Category "),
          ],
        ),
      ),
    );
  }
}
