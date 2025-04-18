import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:shar/interfaces/CategoryInterface.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/screen/SearchFull.dart';

class CategoryItem extends StatefulWidget {
  final CategoryInterface category;
  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  late ProductsBloc productsBlocIntance;

  @override
  void initState() {
    super.initState();
    productsBlocIntance = BlocProvider.of<ProductsBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return Card.outlined(
      elevation: 1,
      child: Container(
        color: whiteColor,
        width: screenWidth * 0.275,
        height: screenWidth * 0.213,
        child: InkWell(
          onTap: () {
            productsBlocIntance.add(
              ProductsByCatergory(
                category: widget.category,
              ),
            );
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Searchfull(),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWidth * 0.10,
                child: Image(
                  image: AssetImage(widget.category.image),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenWidth * 0.02),
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Text(
                  widget.category.name,
                  textScaler: const TextScaler.linear(0.67),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
