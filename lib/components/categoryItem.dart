import 'package:flutter/material.dart';
import 'package:shar/interfaces/CategoryInterface.dart';
import 'package:shar/constants/contants.dart';

class CategoryItem extends StatelessWidget {
  final CategoryInterface category;
  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return GestureDetector(
      onTap: () {},
      child: Card.outlined(
        elevation: 1,
        child: Container(
          color: whiteColor,
          width: screenWidth * 0.275,
          height: screenWidth * 0.213,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWidth * 0.10,
                child: Image(
                  image: AssetImage(category.image),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenWidth * 0.02),
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Text(
                  category.name,
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
