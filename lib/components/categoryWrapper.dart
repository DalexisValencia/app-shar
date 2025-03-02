import 'package:flutter/material.dart';
import 'package:shar/components/categoryItem.dart';
import 'package:shar/components/wrapperHeadline.dart';

class CategoryWrapper extends StatelessWidget {
  const CategoryWrapper({super.key});

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
          Wrapperheadline(mainTitle: 'Categorias' ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              CategoryItem(),CategoryItem(),CategoryItem(),CategoryItem(),CategoryItem(),CategoryItem(),CategoryItem(),CategoryItem(),CategoryItem(),CategoryItem()
            ]
            ,
          )
        ],
      ),
    );
  }
}
