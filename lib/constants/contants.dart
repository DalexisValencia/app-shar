import 'package:flutter/material.dart';

snackBarAddCart(BuildContext context, name) {
  final snackBarCar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Theme.of(context).primaryColorDark,
    content: RichText(
      text: TextSpan(
        text: name,
        style: TextStyle(
          color: Theme.of(context).primaryColorLight,
          fontWeight: FontWeight.bold,
        ),
        children: const <TextSpan>[
          TextSpan(
            text: ' Se ha añadido a favoritos',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBarCar);
}