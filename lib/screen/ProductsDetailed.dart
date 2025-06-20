import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';
import 'package:shar/blocs/favorites/favorites_bloc.dart';
import 'package:shar/components/promotionWrapper.dart';
import 'package:shar/components/ratingStarts.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/blocs/favorites/navigation_bloc.dart';
import 'package:shar/components/Opinionsdetailed.dart';

class ProductsDetailed extends StatefulWidget {
  final ProductsInterface product;
  const ProductsDetailed({
    super.key,
    required this.product,
  });

  @override
  State<ProductsDetailed> createState() => _ProductsDetailedState();
}

class _ProductsDetailedState extends State<ProductsDetailed> {
  late FavoritesBloc favoriteBlocIntance;
  late CartBloc cartBlocIntance;
  late NavigationBloc navigationBlocIntance;

  @override
  void initState() {
    super.initState();
    cartBlocIntance = BlocProvider.of<CartBloc>(context);
    favoriteBlocIntance = BlocProvider.of<FavoritesBloc>(context);
    navigationBlocIntance = BlocProvider.of<NavigationBloc>(context);
  }

  goToTab(int index) {
    navigationBlocIntance.add(
      GoToTab(tabIndex: index),
    );
  }

  addToCart() {
    // String alert = " Se ha añadido al carrito";
    cartBlocIntance.add(
      AddProductToCart(
        product: widget.product,
      ),
    );
    // snackBarAddCart(context, widget.product.name, alert);
  }

  goToCart() {
    goToTab(3);
    Timer(
      const Duration(milliseconds: 250),
      () {
        Navigator.pop(context);
      },
    );
  }

  void removeProduct() {
    cartBlocIntance.add(
      RemoveProductFromCart(product: widget.product),
    );
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

  void removeAmount() {
    cartBlocIntance.add(
      UpdateAmountProductFromCart(product: widget.product, action: "remove"),
    );
  }

  void addAmount() {
    cartBlocIntance.add(
      UpdateAmountProductFromCart(product: widget.product, action: "add"),
    );
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
    var screenWidth = mediaQuery.size.width;
    var statusBarHeight = mediaQuery.viewPadding.top;
    var screenHeight = mediaQuery.size.height - (60 + statusBarHeight);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              height: screenHeight,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: screenWidth * 0.73,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "$urlBaseAssets/${widget.product.image}"), // o NetworkImage
                                fit: BoxFit.cover,
                              ),
                              border: Border(
                                bottom: BorderSide(
                                  color: yellowColor.withOpacity(0.3),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            width: double.infinity,
                            height: 300,
                          ),
                          Positioned(
                            top: 10,
                            left: 0,
                            child: Container(
                              width: screenWidth,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(10),
                                      backgroundColor: greyLightColor,
                                      foregroundColor: blackColor,
                                    ),
                                    child: const Icon(
                                      Icons.arrow_back,
                                      size: 22,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      BlocBuilder<FavoritesBloc,
                                          FavoritesState>(
                                        builder: (BuildContext context,
                                            FavoritesState state) {
                                          List<ProductsInterface> favorites =
                                              state.props[0]
                                                  as List<ProductsInterface>;
                                          bool isFavorite = !favorites
                                              .contains(widget.product);

                                          return ElevatedButton(
                                            onPressed: () {
                                              isFavorite
                                                  ? addToFavorites()
                                                  : removeFromFavorites();
                                            },
                                            style: ElevatedButton.styleFrom(
                                              shape: const CircleBorder(),
                                              padding: const EdgeInsets.all(10),
                                              backgroundColor: isFavorite
                                                  ? blackColor
                                                  : yellowColor,
                                              foregroundColor: isFavorite
                                                  ? yellowColor
                                                  : blackColor,
                                            ),
                                            child: const Icon(Icons.favorite),
                                          );
                                        },
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          goToCart();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(),
                                          padding: const EdgeInsets.all(10),
                                          backgroundColor: yellowColor,
                                          foregroundColor: blackColor,
                                        ),
                                        child: BlocBuilder<CartBloc, CartState>(
                                          builder: (BuildContext context,
                                              CartState state) {
                                            List<ProductsInterface>
                                                carProducts = state.props[0]
                                                    as List<ProductsInterface>;
                                            int totalProducts = 0;
                                            carProducts
                                                .asMap()
                                                .entries
                                                .map((e) {
                                              totalProducts += e.value.amount;
                                            }).toList();
                                            var isEmpty = carProducts.isEmpty;

                                            const carIcon =
                                                Icon(Icons.shopping_cart);

                                            return isEmpty
                                                ? carIcon
                                                : Badge(
                                                    label: Text(
                                                      totalProducts.toString(),
                                                      style: const TextStyle(
                                                        fontSize: 11,
                                                        fontFamily:
                                                            "Inter-SemiBold",
                                                      ),
                                                    ),
                                                    child: carIcon,
                                                  );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 20,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 30,
                              ),
                              decoration: BoxDecoration(
                                color: yellowColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Text(
                                "Promoción",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Fadetransitionwrapper(
                                widgetChild: Text(
                                  widget.product.name,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                durationTime: 350,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Fadetransitionwrapper(
                                widgetChild: Text(
                                  widget.product.shortDescription,
                                  style: const TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(114, 114, 114, 0.7),
                                  ),
                                ),
                                durationTime: 450,
                              ),
                            ],
                          ),
                          Fadetransitionwrapper(
                            widgetChild: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Ratingstarts(
                                    stars: widget.product.rating,
                                    size: 18,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "Reseñas de compradores",
                                    style: TextStyle(
                                      fontFamily: "Inter-SemiBold",
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            durationTime: 480,
                          ),
                          Fadetransitionwrapper(
                            widgetChild: Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                widget.product.longDescription,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            durationTime: 500,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Categorías",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Builder(
                                    builder: (BuildContext context) {
                                      List<Widget> categories = [];
                                      widget.product.categories.map((e) {
                                        categories.add(Text(e.name));
                                      }).toList();
                                      return Wrap(
                                        alignment: WrapAlignment.start,
                                        children: categories,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Opinionsdetailed(
                            product: widget.product,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: const PromotionWrapper(),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, -3), // Shadow only at the top
                  ),
                ],
              ),
              width: double.infinity,
              height: 60,
              child: BlocBuilder<CartBloc, CartState>(
                builder: (BuildContext context, CartState state) {
                  List<ProductsInterface> allProducts =
                      state.props[0] as List<ProductsInterface>;
                  int indexCurrent = allProducts.indexOf((widget.product));
                  if (indexCurrent != -1) {
                    ProductsInterface currentElement =
                        allProducts[indexCurrent];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: horizontalPadding,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  padding: const EdgeInsets.all(5),
                                  constraints: const BoxConstraints(
                                    maxHeight: 40,
                                    minHeight: 40,
                                    maxWidth: 40,
                                    minWidth: 40,
                                  ),
                                  style: IconButton.styleFrom(
                                    backgroundColor: blackColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  onPressed: () => currentElement.amount == 1
                                      ? removeProduct()
                                      : removeAmount(),
                                  icon: const Icon(
                                    Icons.remove,
                                    color: yellowColor,
                                    size: 24,
                                  ),
                                ),
                                Text(
                                  currentElement.amount.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Inter-SemiBold",
                                  ),
                                ),
                                IconButton(
                                  padding: const EdgeInsets.all(5),
                                  constraints: const BoxConstraints(
                                    maxHeight: 40,
                                    minHeight: 40,
                                    maxWidth: 40,
                                    minWidth: 40,
                                  ),
                                  style: IconButton.styleFrom(
                                    backgroundColor: blackColor,
                                    disabledBackgroundColor: greyLightColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  onPressed: currentElement.amount <= 99
                                      ? () => addAmount()
                                      : null,
                                  icon: Icon(
                                    Icons.add,
                                    size: 24,
                                    color: currentElement.amount <= 99
                                        ? yellowColor
                                        : blackColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 240,
                          padding: const EdgeInsets.only(
                            right: horizontalPadding,
                          ),
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: yellowColor,
                              foregroundColor: blackColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            onPressed: () {
                              goToCart();
                            },
                            child: const Text('COTIZAR'),
                          ),
                        ),
                      ],
                    );
                  }
                  return TextButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromRGBO(249, 161, 0, 1),
                          ),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all<Color>(
                        const Color.fromRGBO(249, 161, 0, 1),
                      ),
                    ),
                    onPressed: () => addToCart(),
                    child: const Text(
                      'AÑADIR AL CARRITO',
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
