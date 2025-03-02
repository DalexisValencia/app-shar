import 'package:flutter/material.dart';
import 'package:shar/components/CategoryChip.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/components/CartCard.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: const Row(
                children: [
                  Categorychip(name: "Category 1"),
                  Categorychip(name: "Category 1"),
                  Categorychip(name: "Category 1"),
                  Categorychip(name: "Category 1"),
                  Categorychip(name: "Category 1"),
                  Categorychip(name: "Category 1"),
                ],
              ),
            ),
          ),
          const Fallbacks(description: "Para iniciar, seleccione una categoría o ingrese el nombre del producto."),
          const CartCard(),
          const CartCard(),
          const CartCard(),
        ],
      ),
    );
  }
}
