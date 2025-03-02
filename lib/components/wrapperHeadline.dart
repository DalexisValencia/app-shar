import 'package:flutter/material.dart';

class Wrapperheadline extends StatelessWidget {
  final String mainTitle;
  const Wrapperheadline({super.key, required this.mainTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainTitle,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
