import 'package:flutter/material.dart';
import 'package:shar/screen/ProductsDetailed.dart';

class ProductCard extends StatelessWidget {
  final bool isMiddlePage;
  const ProductCard({super.key, required this.isMiddlePage});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = (mediaQuery.size.width - 40);
    double cardWidth = isMiddlePage ? screenWidth * 0.50 : 250;
    double cardHeight = isMiddlePage ? screenWidth * 0.355 : 177.3;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProductsDetailed(),
          ),
        );
      },
      child: Container(
        width: cardWidth,
        child: Card(
          elevation: 2,
          color: Colors.white,
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
                  // color: Colors.red
                ),
                child: Stack(
                  children: [
                    const ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      child: Image(
                        image: AssetImage('images/base-product.png'),
                        fit: BoxFit.contain,
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
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                              ),
                              child: const Row(
                                children: [
                                  Text(
                                    "4",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: "Inter-SemiBold",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                            ),
                            IconButton(
                              color: Colors.white,
                              icon: const Icon(Icons.favorite),
                              onPressed: () {},
                            )
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Manómetro Presostato",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Mide la presión de un fluido en un sistema hidráulico y al mismo tiempo, activa o desactiva un circuito ...",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
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
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    foregroundColor: WidgetStateProperty.all<Color>(
                      Colors.blue,
                    ),
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Colors.black,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'AÑADIR AL CARRITO',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
