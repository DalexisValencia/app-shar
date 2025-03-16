import 'package:flutter/material.dart';
import 'package:shar/components/CategoryChipWrapper.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Fadetransitionwrapper(
            durationTime: 1500,
            widgetChild: Categorychipwrapper(),
          ),
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
