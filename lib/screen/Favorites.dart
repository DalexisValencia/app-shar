import 'package:flutter/material.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/components/ProductCard.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Fallbacks(description: "Aún no has agregado ningún favorito"),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Wrap(
              children: [
                ProductCard(
                  isMiddlePage: true,
                ),
                ProductCard(
                  isMiddlePage: true,
                ),
                ProductCard(
                  isMiddlePage: true,
                ),
                ProductCard(
                  isMiddlePage: true,
                ),
                ProductCard(
                  isMiddlePage: true,
                ),
                ProductCard(
                  isMiddlePage: true,
                ),
                ProductCard(
                  isMiddlePage: true,
                ),
              ],
            ),
          ),
          const Fallbacks(description: "No hay más productos"),
        ],
      ),
    );
  }
}