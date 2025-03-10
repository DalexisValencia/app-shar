import 'package:flutter/material.dart';
import 'package:shar/components/CartCard.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenHeight = (mediaQuery.size.height - 270);

    return Column(
      children: [
        Container(
          height: screenHeight,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: const Column(
                children: [
                  CartCard(),
                  CartCard(),
                  CartCard(),
                  CartCard(),
                  CartCard(),
                  CartCard(),
                  CartCard(),
                  CartCard(),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 60,
          child: TextButton(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color.fromRGBO(249, 161, 0, 1),
                  ),
                ),
              ),
              backgroundColor: WidgetStateProperty.all<Color>(
                const Color.fromRGBO(249, 161, 0, 1),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'REALIZAR COTIZACIÓN',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
