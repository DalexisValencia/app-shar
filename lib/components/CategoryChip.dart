import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:shar/interfaces/CategoryInterface.dart';
import 'package:shar/constants/contants.dart';

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
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 5,
        ),
        child: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (BuildContext context, ProductsState state) {
            CategoryInterface resultsFilter =
                state.props[1] as CategoryInterface;
                Color activeColor = yellowColor;
                Color inactiveColor = greyLightColor;
                bool isActive = resultsFilter == widget.category;

                return Chip(
                  label: Text(
                    widget.category.name,
                    style: TextStyle(
                      fontSize: 11,
                      color: isActive ? blackColor : greyColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  backgroundColor: isActive ? activeColor : inactiveColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: isActive ? yellowColor : greyLightColor,
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
