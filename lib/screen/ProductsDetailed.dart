import 'package:flutter/material.dart';
import 'package:shar/components/AvatarCircleWrapper.dart';
import 'package:shar/components/CommentsWrapper.dart';
import 'package:shar/components/promotionWrapper.dart';
import 'package:shar/components/ratingStarts.dart';
import 'package:shar/interfaces/ProductsInterface.dart';

import 'package:shar/blocs/favorites/wrapperBlocIntances.dart';
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
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var statusBarHeight = mediaQuery.viewPadding.top;
    var screenHeight = mediaQuery.size.height - (60 + statusBarHeight);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Wrapperblocintances(
          childComponent: Column(
            children: [
              Container(
                height: screenHeight,
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: screenWidth * 0.73,
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
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 20,
                              child: IconButton(
                                color: blackColor,
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
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
                                Text(
                                  widget.product.name,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  widget.product.shortDescription,
                                  style: const TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(114, 114, 114, 0.7),
                                  ),
                                ),
                              ],
                            ),
                            Container(
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
                                    "400 Compradores",
                                    style: TextStyle(
                                      fontFamily: "Inter-SemiBold",
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                widget.product.longDescription,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
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
                                          "${widget.product.comments.length} comentarios",
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
                                            child: Expanded(
                                              child: Row(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        width: 100,
                                                      ),
                                                      const Avatarcirclewrapper(
                                                        avatarUrl: "",
                                                      ),
                                                      const Positioned(
                                                        left: 10,
                                                        child:
                                                            Avatarcirclewrapper(
                                                          avatarUrl: "",
                                                        ),
                                                      ),
                                                      const Positioned(
                                                        left: 20,
                                                        child:
                                                            Avatarcirclewrapper(
                                                          avatarUrl: "",
                                                        ),
                                                      ),
                                                      const Positioned(
                                                        left: 30,
                                                        child:
                                                            Avatarcirclewrapper(
                                                          avatarUrl: "",
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Flexible(
                                            child: Text(
                                              "Otros compradores han opinado sobre este producto, también puedes dejar tus comentarios y preguntas.",
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
                width: double.infinity,
                height: 60,
                child: TextButton(
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
                  onPressed: () {},
                  child: const Text(
                    'AÑADIR AL CARRITO',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
