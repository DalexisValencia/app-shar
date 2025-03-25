import 'package:flutter/material.dart';

snackBarAddCart(BuildContext context, name, alert) {
  final snackBarCar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.amber,
    content: RichText(
      text: TextSpan(
        text: name,
        style: const TextStyle(
          color: Colors.black,
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