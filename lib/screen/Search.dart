import 'package:flutter/material.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:shar/components/CategoryChipWrapper.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/constants/contants.dart';

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
            durationTime: 800,
            widgetChild: Categorychipwrapper(),
          ),
          /*const Fallbacks(
            description:
                "Para iniciar, seleccione una categoría o ingrese el nombre del producto.",
          ),
          */
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: horizontalPadding,
            ),
            child: BlocBuilder<ProductsBloc, ProductsState>(
              builder: (BuildContext context, ProductsState state) {
                List<ProductsInterface> resultsFilter =
                    state.props[2] as List<ProductsInterface>;
                if (resultsFilter.isEmpty) {
                  return const Fallbacks(
                    description:
                        "Lo sentimos, no hay resultados para la búsqueda que ha realizado.",
                  );
                }

                return Builder(
                  builder: (BuildContext context) {
                    List<Widget> productsFinal = [];
                    resultsFilter.asMap().entries.map((e) {
                      productsFinal.add(
                        ProductCard(
                          isMiddlePage: true,
                          product: e.value,
                        ),
                      );
                    }).toList();
                    productsFinal.add(
                        const Fallbacks(description: "No hay más productos"));
                    return Wrap(
                      children: productsFinal,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
