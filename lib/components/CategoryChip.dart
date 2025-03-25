import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:shar/interfaces/CategoryInterface.dart';

class Categorychip extends StatefulWidget {
  final CategoryInterface category;
  const Categorychip({
    super.key,
    required this.category,
  });

  @override
  State<Categorychip> createState() => _CategorychipState();
}

class _CategorychipState extends State<Categorychip> {
  late ProductsBloc productsBlocIntance;

  @override
  void initState() {
    super.initState();
    productsBlocIntance = BlocProvider.of<ProductsBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        productsBlocIntance.add(
          ProductsByCatergory(
            category: widget.category,
          ),
        );
        /*print("ter");
        productsBlocIntance.add(
          ProductsByFilter(
            term: "Primer",
          ),
        );*/
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 5,
        ),
        child: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (BuildContext context, ProductsState state) {
            CategoryInterface resultsFilter =
                state.props[1] as CategoryInterface;
                Color active = const Color.fromARGB(177, 255, 140, 32);
                Color inActive = const Color.fromRGBO(217, 217, 217, 0.7);

                return Chip(
                  label: Text(
                    widget.category.name,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  backgroundColor: resultsFilter == widget.category ? active : inActive,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromRGBO(217, 217, 217, 0.7),
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                );
              
            
          },
        ),
      ),
    );
  }
}
