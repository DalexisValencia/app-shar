import 'package:flutter/material.dart';
import 'package:shar/constants/contants.dart';

class Avatarcirclewrapper extends StatelessWidget {
  final String avatarUrl;
  const Avatarcirclewrapper({super.key, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: whiteColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://avatars.githubusercontent.com/u/61495501?v=4",
        ),
        radius: 22,
      ),
    );
  }
}
