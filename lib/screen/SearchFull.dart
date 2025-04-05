import 'package:flutter/material.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:shar/components/CategoryChipWrapper.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/constants/contants.dart';

class Searchfull extends StatefulWidget {
  const Searchfull({super.key});

  @override
  State<Searchfull> createState() => _SearchfullState();
}

class _SearchfullState extends State<Searchfull> {
  final searchingText = TextEditingController();
  late ProductsBloc productsBlocIntance;

  @override
  void initState() {
    super.initState();
    productsBlocIntance = BlocProvider.of<ProductsBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: searchingText,
              enableSuggestions: false,
              autocorrect: false,
              autofocus: false,
              style: const TextStyle(
                fontSize: 12,
                color: blackColor,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 238, 238, 238),
                hintText: '¿Qué estás buscando?',
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                errorStyle: const TextStyle(
                  fontSize: 9,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: greyColor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: greyLightColor,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onChanged: (value) => {
                print(value),
                productsBlocIntance.add(
                  ProductsByFilter(
                    term: value,
                  ),
                ),
              },
            ),
            const Fadetransitionwrapper(
              durationTime: 800,
              widgetChild: Categorychipwrapper(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
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
      ),
    );
  }
}
