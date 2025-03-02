import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    // var screenHeight = mediaQuery.size.height;

    return GestureDetector(
      onTap: () {},
      child: Card.outlined(
        elevation: 1,
        child: Container(
          width: screenWidth * 0.213,
          height: screenWidth * 0.213,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWidth * 0.10,
                child: const Image(
                  image: AssetImage('images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenWidth * 0.01),
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: const Text(
                  "category name",
                  textScaler: TextScaler.linear(0.9),
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
