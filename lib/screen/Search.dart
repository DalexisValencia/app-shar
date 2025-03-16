import 'package:flutter/material.dart';
import 'package:shar/components/CategoryChipWrapper.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Fadetransitionwrapper(
            durationTime: 1500,
            widgetChild: Categorychipwrapper(),
          ),
          const Fallbacks(
            description:
                "Para iniciar, seleccione una categoría o ingrese el nombre del producto.",
          ),
          const Fallbacks(
            description:
                "Lo sentimos, no hay resultados para la búsqueda que ha realizado.",
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
