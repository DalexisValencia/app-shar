import 'package:flutter/material.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/screen/ProductsDetailed.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/blocs/favorites/favorites_bloc.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';

class CartCard extends StatefulWidget {
  final ProductsInterface product;
  const CartCard({
    super.key,
    required this.product,
  });

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  late CartBloc cartBlocIntance;
  late FavoritesBloc favoriteBlocIntance;

  @override
  void initState() {
    super.initState();
    cartBlocIntance = BlocProvider.of<CartBloc>(context);
    favoriteBlocIntance = BlocProvider.of<FavoritesBloc>(context);
  }

  void addAmount() {
    cartBlocIntance.add(
      UpdateAmountProductFromCart(product: widget.product, action: "add"),
    );
  }

  void removeAmount() {
    cartBlocIntance.add(
      UpdateAmountProductFromCart(product: widget.product, action: "remove"),
    );
  }

  void removeProduct() {
    cartBlocIntance.add(
      RemoveProductFromCart(product: widget.product),
    );
  }

    void addToFavorites() {
    favoriteBlocIntance.add(
      AddProductToFavorite(
        product: widget.product,
      ),
    );
    snackBarAddCart(context, widget.product.name);
  }

  void removeFromFavorites() {
    favoriteBlocIntance.add(
      RemoveProductFromFavorite(
        product: widget.product,
      ),
    );
    snackBarAddCart(context, widget.product.name);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return Fadetransitionwrapper(
      durationTime: 800,
      widgetChild: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        child: GestureDetector(
          onTap: () {
            /*Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProductsDetailed(),
              ),
            );*/
          },
          child: Card(
            elevation: 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Hero(
                      tag: 'imageProductHero',
                      child: Container(
                        width: screenWidth * 0.2,
                        height: 105,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(widget.product.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: BlocBuilder<FavoritesBloc, FavoritesState>(
                        builder: (BuildContext context, FavoritesState state) {
                          // print(state.props[0]);
                          List<ProductsInterface> favorites =
                              state.props[0] as List<ProductsInterface>;
                          bool isFavorite = !favorites.contains(widget.product);

                          return IconButton(
                            color:
                                isFavorite ? Colors.white : Colors.amberAccent,
                            icon: const Icon(Icons.favorite),
                            onPressed: () {
                              isFavorite
                                  ? addToFavorites()
                                  : removeFromFavorites();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  width: screenWidth * 0.60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.product.name,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                BlocBuilder<CartBloc, CartState>(
                  builder: (BuildContext context, CartState state) {
                    // print(state.props[0]);
                    List<ProductsInterface> allProducts =
                        state.props[0] as List<ProductsInterface>;
                    int idexCurrent = allProducts.indexOf((widget.product));
                    ProductsInterface currentElement = allProducts[idexCurrent];

                    return Container(
                      height: 90,
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            padding: const EdgeInsets.all(5),
                            constraints: const BoxConstraints(maxHeight: 40),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () => addAmount(),
                            icon: const Icon(
                              Icons.add,
                              size: 15,
                            ),
                          ),
                          Text(
                            currentElement.amount.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                              fontFamily: "Inter-SemiBold",
                            ),
                          ),
                          IconButton(
                            padding: const EdgeInsets.all(5),
                            constraints: const BoxConstraints(maxHeight: 40),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () => currentElement.amount == 1
                                ? removeProduct()
                                : removeAmount(),
                            icon: Icon(
                              currentElement.amount == 1
                                  ? Icons.delete
                                  : Icons.remove,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
