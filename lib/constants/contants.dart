import 'package:flutter/material.dart';

const blackColor = Color(0xFF000000); // GREY
const whiteColor = Color(0xFFFBFBFB); // WHITE
const yellowColor = Color(0xFFF4AF31); // YELLOW BLUE
const greyColor = Color(0xFF727272); // DARK GRAY
const greyLightColor = Color.fromARGB(255, 201, 201, 201); // LIGHT GRAY

snackBarAddCart(BuildContext context, name, alert) {
  final snackBarCar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: yellowColor,
    content: RichText(
      text: TextSpan(
        text: name,
        style: const TextStyle(
          color: blackColor,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
            text: alert,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBarCar);
}