import 'package:flutter/material.dart';
import 'package:shar/components/categoryItem.dart';
import 'package:shar/components/wrapperHeadline.dart';
import 'package:shar/Lists/CategoriesList.dart';
import 'package:shar/interfaces/CategoryInterface.dart';

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
          Wrapperheadline(mainTitle: 'Categorias', showMore: () => {}, ),
          Builder(
            builder: (BuildContext context) {
              List<Widget> categories = [];
                categoryList.sublist(0,9).asMap().entries.map((e) {
                  categories.add(
                    CategoryItem(
                      category: e.value,
                    ),
                  );
                }).toList();
                return Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: categories,
                );
            },
          ),
        ],
      ),
    );
  }
}

extension on List<CategoryInterface> {
  slice(int i, int j) {}
}
