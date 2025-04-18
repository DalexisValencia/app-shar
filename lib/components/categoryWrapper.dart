import 'package:flutter/material.dart';
import 'package:shar/components/categoryItem.dart';
import 'package:shar/components/wrapperHeadline.dart';
import 'package:shar/Lists/CategoriesList.dart';
import 'package:shar/interfaces/CategoryInterface.dart';
import 'package:shar/screen/CategoriesFull.dart';
import 'package:shar/screen/SearchFull.dart';

class CategoryWrapper extends StatelessWidget {
  final bool full;
  const CategoryWrapper({
    super.key,
    required this.full,
  });

  

  @override
  Widget build(BuildContext context) {
    double cardSize = full ? 0.43 : 0.275;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          !full
              ? Wrapperheadline(
                  mainTitle: 'Categorias',
                  showMore: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Categoriesfull(),
                      ),
                    ),
                  },
                )
              : const SizedBox(
                  width: 0,
                ),
          Builder(
            builder: (BuildContext context) {
              List<Widget> categories = [];
              int totalInView = full ? categoryList.length : 9;
              categoryList.sublist(0, totalInView).asMap().entries.map((e) {
                categories.add(
                  CategoryItem(
                    category: e.value,
                    cardSize: cardSize,
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
