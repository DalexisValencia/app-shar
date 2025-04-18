import 'package:flutter/material.dart';
import 'package:shar/components/ProductCard.dart';
import 'package:shar/components/wrapperHeadline.dart';
import 'package:shar/Lists/ProductsList.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:shar/screen/SearchFull.dart';

class PromotionWrapper extends StatefulWidget {
  const PromotionWrapper({super.key});

  @override
  State<PromotionWrapper> createState() => _PromotionWrapperState();
}

class _PromotionWrapperState extends State<PromotionWrapper> {
  late ProductsBloc productsBlocIntance;

  @override
  void initState() {
    super.initState();
    productsBlocIntance = BlocProvider.of<ProductsBloc>(context);
  }

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
          Wrapperheadline(
            mainTitle: 'Promociones',
            showMore: () => {
              productsBlocIntance.add(
                ProductsByPromotion(),
              ),
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Searchfull(),
                ),
              ),
            },
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Builder(
              builder: (BuildContext context) {
                List<Widget> categories = [];
                var promotions = productsList
                    .where((i) => i.promotion)
                    .toList()
                    .sublist(0, 2);
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
