import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:shar/interfaces/CategoryInterface.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/screen/SearchFull.dart';

class CategoryItem extends StatefulWidget {
  final CategoryInterface category;
  final double cardSize;
  const CategoryItem({
    super.key,
    required this.category,
    required this.cardSize,
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: yellowColor,
          width: 0.5,
        ),
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: screenWidth * widget.cardSize,
        height: screenWidth * widget.cardSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 255, 244, 224),
        ),
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
                width: screenWidth * (widget.cardSize / 2),
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
