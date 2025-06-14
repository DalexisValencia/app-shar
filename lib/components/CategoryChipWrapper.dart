import 'package:flutter/material.dart';
import 'package:shar/components/CategoryChip.dart';
import 'package:shar/Lists/CategoriesList.dart';
import 'package:shar/constants/contants.dart';

class Categorychipwrapper extends StatelessWidget {
  const Categorychipwrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: 0,
        ),
        child: Builder(
            builder: (BuildContext context) {
              List<Widget> categories = [];
                categoryList.asMap().entries.map((e) {
                  categories.add(
                    Categorychip(
                      category: e.value,
                    ),
                  );
                }).toList();
                return Row(
                  children: categories,
                );
            },
          ), 
      ),
    );
  }
}
