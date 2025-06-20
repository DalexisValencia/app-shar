import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const blackColor = Color(0xFF000000); // GREY
const whiteColor = Color(0xFFFBFBFB); // WHITE
const yellowColor = Color(0xFFF4AF31); // YELLOW BLUE
const greyColor = Color(0xFF727272); // DARK GRAY
const redColor = Color.fromARGB(240, 192, 21, 16); // DARK GRAY
const greyLightColor = Color.fromARGB(255, 201, 201, 201); // LIGHT GRAY}

const urlBaseAssets = "https://raw.githubusercontent.com/DalexisValencia/app-shar/refs/heads/master/Products";
const urlBaseAvatars = "https://raw.githubusercontent.com/DalexisValencia/app-shar/refs/heads/master/images/avatars";

const horizontalPadding = 10.0;

snackBarAddCart(BuildContext context, name, alert) {
  final snackBarCar = SnackBar(
    duration: const Duration(seconds: 2),
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

dateNow() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('MM/dd/yyyy');
  final String formattedDate = formatter.format(now);

  return formattedDate;
}
