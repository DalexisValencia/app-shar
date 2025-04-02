import 'package:flutter/material.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/screen/ProductsDetailed.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/favorites_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/constants/contants.dart';

class ProductCard extends StatefulWidget {
  final bool isMiddlePage;
  final ProductsInterface product;
  const ProductCard({
    super.key,
    required this.isMiddlePage,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late FavoritesBloc favoriteBlocIntance;
  late CartBloc cartBlocIntance;
  @override
  void initState() {
    super.initState();
    favoriteBlocIntance = BlocProvider.of<FavoritesBloc>(context);
    cartBlocIntance = BlocProvider.of<CartBloc>(context);
  }

  void addToCar() {
    String alert = " Se ha añadido al carrito";
    cartBlocIntance.add(
      AddProductToCart(
        product: widget.product,
      ),
    );
    snackBarAddCart(context, widget.product.name, alert);
  }

  void removeFromCar() {
    String alert = " Se ha removido del carrito";
    cartBlocIntance.add(
      RemoveProductFromCart(
        product: widget.product,
      ),
    );
    snackBarAddCart(context, widget.product.name, alert);
  }

  void addToFavorites() {
    String alert = " Se ha añadido a favoritos";
    favoriteBlocIntance.add(
      AddProductToFavorite(
        product: widget.product,
      ),
    );
    snackBarAddCart(context, widget.product.name, alert);
  }

  void removeFromFavorites() {
    String alert = " Se ha removido de favoritos";
    favoriteBlocIntance.add(
      RemoveProductFromFavorite(
        product: widget.product,
      ),
    );
    snackBarAddCart(context, widget.product.name, alert);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = (mediaQuery.size.width - 40);
    double cardWidth = widget.isMiddlePage ? screenWidth * 0.50 : 250;
    double cardHeight = widget.isMiddlePage ? screenWidth * 0.355 : 177.3;

    return Fadetransitionwrapper(
      durationTime: 1000,
      widgetChild: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductsDetailed(
                product: widget.product,
              ),
            ),
          );
        },
        child: Container(
          color: whiteColor,
          width: cardWidth,
          child: Card(
            elevation: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: cardHeight,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        child: Hero(
                          tag: 'imageProductHero',
                          child: Image(
                            image: AssetImage(widget.product.image),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        width: cardWidth,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 10,
                                ),
                                decoration: const BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      widget.product.rating.toString(),
                                      style: const TextStyle(
                                        fontSize: 11,
                                        fontFamily: "Inter-SemiBold",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                      child: Image(
                                        image: AssetImage(
                                            "images/icons/star-filled.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              BlocBuilder<FavoritesBloc, FavoritesState>(
                                builder: (BuildContext context,
                                    FavoritesState state) {
                                  List<ProductsInterface> favorites =
                                      state.props[0] as List<ProductsInterface>;
                                  bool isFavorite =
                                      !favorites.contains(widget.product);

                                  return IconButton(
                                    color:
                                        isFavorite ? whiteColor : yellowColor,
                                    icon: const Icon(Icons.favorite),
                                    onPressed: () {
                                      isFavorite
                                          ? addToFavorites()
                                          : removeFromFavorites();
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.product.longDescription,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          side: BorderSide(color: blackColor),
                        ),
                      ),
                      foregroundColor: WidgetStateProperty.all<Color>(
                        yellowColor,
                      ),
                      backgroundColor: WidgetStateProperty.all<Color>(
                        blackColor,
                      ),
                    ),
                    onPressed: () {
                      addToCar();
                    },
                    child: const Text(
                      'AÑADIR AL CARRITO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w300,
                      ),
                      textScaler: TextScaler.linear(0.78),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
