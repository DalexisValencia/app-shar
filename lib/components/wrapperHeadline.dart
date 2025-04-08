import 'package:flutter/material.dart';

class Wrapperheadline extends StatelessWidget {
  final String mainTitle;
  final Function showMore;
  const Wrapperheadline({
    super.key,
    required this.mainTitle,
    required this.showMore,
  });

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
              fontWeight: FontWeight.bold,
              fontFamily: "Cocogoose",
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () => showMore,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              child: const Text(
                "Ver más",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Cocogoose",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
