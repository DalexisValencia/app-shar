import 'package:flutter/material.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/favorites_bloc.dart';
import 'package:shar/constants/contants.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 10,
            ),
            child: BlocBuilder<FavoritesBloc, FavoritesState>(
              builder: (BuildContext context, FavoritesState state) {
                List<ProductsInterface> favorites =
                    state.props[0] as List<ProductsInterface>;
                if (favorites.isEmpty) {
                  return const Fallbacks(
                    description:
                        "Aún no has agregado ningún producto a tus favoritos",
                  );
                }

                return Builder(
                  builder: (BuildContext context) {
                    List<Widget> favoritesFinal = [];
                    favorites.asMap().entries.map((e) {
                      favoritesFinal.add(
                        ProductCard(
                          isMiddlePage: true,
                          product: e.value,
                        ),
                      );
                    }).toList();
                    return Wrap(
                      children: favoritesFinal,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
