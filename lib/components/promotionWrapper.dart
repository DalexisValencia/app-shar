import 'package:flutter/material.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/components/wrapperHeadline.dart';
import 'package:shar/Lists/ProductsList.dart';

class PromotionWrapper extends StatelessWidget {
  const PromotionWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Wrapperheadline(mainTitle: 'Promociones' ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          child: 
          Builder(
            builder: (BuildContext context) {
              List<Widget> categories = [];
              var promotions = productsList.where((i) => i.promotion).toList().sublist(0,2);
                promotions.asMap().entries.map((e) {
                  categories.add(
                    ProductCard(
                      isMiddlePage: false,
                      product: e.value,
                    ),
                  );
                }).toList();
                return Row(
                  children: categories,
                );
            },
          ),
          /*Row(
            children: [
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
              ProductCard(isMiddlePage: false,),
            ],
          ),*/
        ),
        ],
      ),
    );
  }
}
