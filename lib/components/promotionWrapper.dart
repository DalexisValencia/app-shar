import 'package:flutter/material.dart';
import 'package:shar/components/promotionItem.dart';
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Wrapperheadline(mainTitle: 'Promociones' ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PromotionItem(),
              PromotionItem(),
              PromotionItem(),
              PromotionItem(),
              PromotionItem(),
              PromotionItem(),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
