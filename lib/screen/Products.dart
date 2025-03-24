import 'package:flutter/material.dart';
import 'package:shar/components/CategoryChipWrapper.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';
import 'package:shar/Lists/ProductsList.dart';

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
            limit = result < limit ? limit+result : limit += 10;
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Builder(
              builder: (BuildContext context) {
                List<Widget> categories = [];
                productsList.sublist(0, limit).asMap().entries.map((e) {
                  categories.add(
                    ProductCard(
                      isMiddlePage: true,
                      product: e.value,
                    ),
                  );
                }).toList();
                return Wrap(
                  children: categories,
                );
              },
            ),
          ),
          limit == totalProducts ? const Fallbacks(description: "No hay más productos") : const SizedBox(
            child: Text("Cargando..."),
          ),
        ],
      ),
    );
  }
}
