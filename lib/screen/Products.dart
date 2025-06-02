import 'package:flutter/material.dart';
import 'package:shar/components/CategoryChipWrapper.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';
import 'package:shar/Lists/ProductsList.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/ProductsInterface.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  int limit = 10;
  int totalProducts = productsList.length;
  late final ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.position.maxScrollExtent == _controller.offset) {
        int result = totalProducts - limit;
        setState(() {
          limit = result < limit ? limit + result : limit += 10;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        children: [
          const Fadetransitionwrapper(
            durationTime: 800,
            widgetChild: Categorychipwrapper(),
          ),
          Container(
            color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<ProductsBloc, ProductsState>(
              builder: (BuildContext context, ProductsState state) {
                List<ProductsInterface> allProducts =
                    state.props[0] as List<ProductsInterface>;

                List<ProductsInterface> resultsFilter =
                    state.props[2] as List<ProductsInterface>;

                bool updateScreen = state.props[3] as bool;
                if (resultsFilter.isEmpty && !updateScreen) {
                  return Builder(
                    builder: (BuildContext context) {
                      List<Widget> products = [];
                      allProducts.sublist(0, limit).asMap().entries.map((e) {
                        products.add(
                          ProductCard(
                            isMiddlePage: true,
                            product: e.value,
                          ),
                        );
                      }).toList();

                      products.add(
                        limit == totalProducts
                            ? const Fallbacks(
                                description: "No hay más productos")
                            : const SizedBox(
                                child: Text("Cargando..."),
                              ),
                      );

                      return Wrap(
                        children: products,
                      );
                    },
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
          ),
        ],
      ),
    );
  }
}
