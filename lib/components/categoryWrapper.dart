import 'package:flutter/material.dart';
import 'package:shar/components/categoryItem.dart';
import 'package:shar/components/wrapperHeadline.dart';
import 'package:shar/Lists/CategoriesList.dart';

class CategoryWrapper extends StatelessWidget {
  const CategoryWrapper({super.key});

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
          const Wrapperheadline(mainTitle: 'Categorias' ),
          Builder(
            builder: (BuildContext context) {
              List<Widget> categories = [];
                categoryList.asMap().entries.map((e) {
                  categories.add(
                    CategoryItem(
                      category: e.value,
                    ),
                  );
                }).toList();
                return Wrap(
                  children: categories,
                );
            },
          ),
        ],
      ),
    );
  }
}
