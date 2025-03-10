import 'package:flutter/material.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/components/wrapperHeadline.dart';

class PromotionWrapper extends StatelessWidget {
  const PromotionWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Wrapperheadline(mainTitle: 'Promociones' ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
