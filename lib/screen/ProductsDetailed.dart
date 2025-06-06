import 'package:flutter/material.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';
import 'package:shar/blocs/favorites/favorites_bloc.dart';
import 'package:shar/components/AvatarCircleWrapper.dart';
import 'package:shar/components/CommentsWrapper.dart';
import 'package:shar/components/promotionWrapper.dart';
import 'package:shar/components/ratingStarts.dart';
import 'package:shar/interfaces/CategoryInterface.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/constants/contants.dart';

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

  @override
  void initState() {
    super.initState();
    cartBlocIntance = BlocProvider.of<CartBloc>(context);
    favoriteBlocIntance = BlocProvider.of<FavoritesBloc>(context);
  }

  addToCart() {
    String alert = " Se ha añadido al carrito";
    cartBlocIntance.add(
      AddProductToCart(
        product: widget.product,
      ),
    );
    snackBarAddCart(context, widget.product.name, alert);
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
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "$urlBaseAssets/${widget.product.image}"), // o NetworkImage
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          /*ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                            child: Image.network(
                              "$urlBaseAssets/${widget.product.image}",
                              fit: BoxFit.fitWidth,
                            ),
                          ),*/
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
                                          // Navigator.pop(context);
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
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
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                durationTime: 350,
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
                                    widget.product.categories
                                        .map((e)  {
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
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Opiniones",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "(${widget.product.comments.length}) comentarios",
                                        style: const TextStyle(
                                          fontFamily: "Inter-SemiBold",
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  child: Container(
                                    width: screenWidth,
                                    margin: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                            right: 5,
                                          ),
                                          width: 100,
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    width: 100,
                                                  ),
                                                  const Avatarcirclewrapper(
                                                    avatarUrl: "/avatar-1.png",
                                                  ),
                                                  const Positioned(
                                                    left: 10,
                                                    child: Avatarcirclewrapper(
                                                      avatarUrl:
                                                          "/avatar-2.png",
                                                    ),
                                                  ),
                                                  const Positioned(
                                                    left: 20,
                                                    child: Avatarcirclewrapper(
                                                      avatarUrl:
                                                          "/avatar-3.png",
                                                    ),
                                                  ),
                                                  const Positioned(
                                                    left: 30,
                                                    child: Avatarcirclewrapper(
                                                      avatarUrl:
                                                          "/avatar-4.png",
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const Flexible(
                                          child: Text(
                                            "Otros compradores han opinado sobre este producto, también puedes dejar tus comentarios y preguntas dando clic.",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (BuildContext context) {
                                        return Commentswrapper(
                                          product: widget.product,
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
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
              color: const Color.fromARGB(255, 227, 227, 227),
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
                        IconButton(
                          padding: const EdgeInsets.all(5),
                          constraints: const BoxConstraints(
                            maxHeight: 60,
                            minHeight: 60,
                            maxWidth: 40,
                            minWidth: 40,
                          ),
                          style: IconButton.styleFrom(
                            backgroundColor: yellowColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () => currentElement.amount == 1
                              ? removeProduct()
                              : removeAmount(),
                          icon: const Icon(
                            Icons.remove,
                            color: blackColor,
                            size: 15,
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
                            maxHeight: 60,
                            minHeight: 60,
                            maxWidth: 40,
                            minWidth: 40,
                          ),
                          style: IconButton.styleFrom(
                            backgroundColor: yellowColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () => addAmount(),
                          icon: const Icon(
                            Icons.add,
                            size: 15,
                            color: blackColor,
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
